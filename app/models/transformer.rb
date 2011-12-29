# == Schema Information
# Schema version: 20110203165120
#
# Table name: transformer
#
#  id                  :integer(4)      not null, primary key
#  version             :integer(4)
#  contract            :string(255)
#  detail              :string(255)
#  egatsn              :string(255)
#  first_energize      :datetime
#  hv                  :float
#  item                :integer(4)
#  lv                  :float
#  manufacturingserial :string(255)
#  maxcapacity         :float
#  old_egatsn          :string(255)
#  phase               :integer(4)
#  picture             :string(255)
#  transformer_name    :string(255)
#  tv                  :float
#  vector_group        :string(255)
#  first_substation    :integer(10)
#  manufacturing       :integer(10)
#  status              :integer(10)
#  winding_type_id     :integer(10)
#  brand_id            :integer(4)
#  position            :string(255)
#  oltc_manufacturer   :string(255)
#  oltc_type           :string(255)
#

class Transformer < ActiveRecord::Base
  set_table_name "transformer"
  belongs_to :brand
  has_many :transformer_information
  has_many :oil_dgas
  has_many :oltc_dgas
  has_many :furans
  has_many :oil_contamination
  has_many :oltc_oil_contamination
  has_many :visual_inspection
  has_many :insulating_oil
  has_many :winding_type
  has_one :manufacturer
  has_many :bushing_tests
  has_many :arresters
  delegate :name, :to => :brand, :prefix => true

  def self.find_all_by_transformer_name_initials(names)
    conditions = "transformer_name like ?"
    names[1..names.length].each { |name|
      conditions += ' ' + 'OR transformer_name like ?'
    }
    names = names.map { |name| name + '-%'}
    x = [conditions] + names
    self.where(x).all
  end

  def self.find_by_id_or_transformer_name(id)
    if id.to_i > 0
      transformer = Transformer.find_by_id(id)
    else
      transformer = Transformer.find_by_id_or_transformer_name(id)
    end
  end

  def self.get_transformer_id(id)
	where("id = '#{id}'").first
    	rescue Exception
      	return nil
  end

  def self.transformer_getid()
	order("id DESC").first
    	     rescue Exception
      	return nil
  end

  def self.get_bushing_type(id)
        result = Transformer.find_by_sql("(SELECT DISTINCT bushing_hv_type FROM transformer WHERE bushing_hv_manu='#{id}') UNION (SELECT DISTINCT bushing_lv_type FROM transformer WHERE bushing_lv_manu='#{id}') UNION (SELECT DISTINCT bushing_tv_type FROM transformer WHERE bushing_tv_manu='#{id}') order by bushing_hv_type")
        return result
  end

  def self.get_all_bushing_type()
        result = Transformer.find_by_sql("(SELECT DISTINCT bushing_hv_type FROM transformer) UNION (SELECT DISTINCT bushing_lv_type FROM transformer) UNION (SELECT DISTINCT bushing_tv_type FROM transformer) order by bushing_hv_type")
        return result
  end




  def self.get_arrester_type(id)
        result = Transformer.find_by_sql("(SELECT DISTINCT arrester_hv_type FROM transformer WHERE arrester_hv_manu='#{id}') UNION (SELECT DISTINCT arrester_lv_type FROM transformer WHERE arrester_lv_manu='#{id}') UNION (SELECT DISTINCT arrester_tv_type FROM transformer WHERE arrester_tv_manu='#{id}') order by arrester_hv_type");
        return result
  end
  def self.get_all_arrester_type()
        result = Transformer.find_by_sql("(SELECT DISTINCT arrester_hv_type FROM transformer) UNION (SELECT DISTINCT arrester_lv_type FROM transformer) UNION (SELECT DISTINCT arrester_tv_type FROM transformer) order by arrester_hv_type");
        return result
  end


  def self.get_oltc_type(id)
        where("oltc_manufacturer='#{id}'").group(:oltc_type).order(:oltc_type)
  end

  def self.get_all_oltc_type()
        group(:oltc_type).order(:oltc_type)
  end

  def self.calculate_f_normal_weibull(equipe, voltage, manufacturer, type, failuredetail)
      f = 0
      minvol = voltage.to_f * 0.9
      maxvol = voltage.to_f * 1.1
      failure_age = Array.new
      now = Time.new

      if equipe == "Bushing"
        #count hv bushing failure
        if failuredetail == '-- All --'
        	hv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failurepart='HV Bushing'")
 	else
        	hv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failuredetail='#{failuredetail}' and failurepart='HV Bushing'")
	end
        if !hv_bushing_failure.nil?
           for i in 0..hv_bushing_failure.size-1 do

	      if manufacturer == '-- All --'
	              if type == '-- All --'
      	 	         result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and egatsn='#{hv_bushing_failure[i].egatsn}'")
       		      else
                	 result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_type='#{type}' and egatsn='#{hv_bushing_failure[i].egatsn}'")
              	      end

	      else
	              if type == '-- All --'
      	 	         result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_manu='#{manufacturer}' and egatsn='#{hv_bushing_failure[i].egatsn}'")
       		      else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_manu='#{manufacturer}' and bushing_hv_type='#{type}' and egatsn='#{hv_bushing_failure[i].egatsn}'")
              	      end
	      end


              if !result.nil? and result.size != 0
                f = f + 1
		failure_age << (now.year - (hv_bushing_failure[i].downdatetime.to_s.split("-"))[0].to_i)
              end
          end
        end

        if failuredetail == '-- All --'
        	lv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failurepart='LV Bushing'")
	else
        	lv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failuredetail='#{failuredetail}' and failurepart='LV Bushing'")
	end
        if !lv_bushing_failure.nil?
           for i in 0..lv_bushing_failure.size-1 do
	      if manufacturer == '-- All --'
              		if type == '-- All --'
                		result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol}  and egatsn='#{lv_bushing_failure[i].egatsn}'")
              		else
                		result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol}  and bushing_lv_type='#{type}' and egatsn='#{lv_bushing_failure[i].egatsn}'")
              		end
	      else
              		if type == '-- All --'
                		result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_manu='#{manufacturer}' and egatsn='#{lv_bushing_failure[i].egatsn}'")
              		else
                		result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_manu='#{manufacturer}' and bushing_lv_type='#{type}' and egatsn='#{lv_bushing_failure[i].egatsn}'")
              		end
	      end

              if !result.nil? and result.size != 0
                f = f + 1
		failure_age << (now.year - (lv_bushing_failure[i].downdatetime.to_s.split("-"))[0].to_i)
              end
          end
       end


        if failuredetail == '-- All --'
        	tv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failurepart='TV Bushing'")
	else
        	tv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failuredetail='#{failuredetail}' and failurepart='TV Bushing'")
	end
        if !tv_bushing_failure.nil?
           for i in 0..tv_bushing_failure.size-1 do
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and egatsn='#{tv_bushing_failure[i].egatsn}'")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_type='#{type}' and egatsn='#{tv_bushing_failure[i].egatsn}'")
              	end
	      else
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_manu='#{manufacturer}' and egatsn='#{tv_bushing_failure[i].egatsn}'")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_manu='#{manufacturer}' and bushing_tv_type='#{type}' and egatsn='#{tv_bushing_failure[i].egatsn}'")
              	end
	      end

              if !result.nil? and result.size != 0
                f = f + 1
		failure_age << (now.year - (tv_bushing_failure[i].downdatetime.to_s.split("-"))[0].to_i)
              end
          end
        end
     
    elsif equipe == "Arrester"
        #count hv arrester failure
        if failuredetail == '-- All --'
        	hv_ar_failure = FailureDatabase.where("failuregroup='Arrester' and failurepart='HV Arrester'")
	else
        	hv_ar_failure = FailureDatabase.where("failuregroup='Arrester' and failuredetail='#{failuredetail}' and failurepart='HV Arrester'")
	end
        if !hv_ar_failure.nil?
           for i in 0..hv_ar_failure.size-1 do
	      if manufacturer == '-- All --'
              		if type == '-- All --'
                		result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol}  and egatsn='#{hv_ar_failure[i].egatsn}'")
              		else
                		result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol}  and arrester_hv_type='#{type}' and egatsn='#{hv_ar_failure[i].egatsn}'")
              		end
	      else
              		if type == '-- All --'
                		result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and arrester_hv_manu='#{manufacturer}' and egatsn='#{hv_ar_failure[i].egatsn}'")
              		else
                		result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and arrester_hv_manu='#{manufacturer}' and arrester_hv_type='#{type}' and egatsn='#{hv_ar_failure[i].egatsn}'")
              		end
	      end

              if !result.nil? and result.size != 0
                f = f + 1
		failure_age << (now.year - (hv_ar_failure[i].downdatetime.to_s.split("-"))[0].to_i)
              end
          end
        end

        if failuredetail == '-- All --'
        	lv_ar_failure = FailureDatabase.where("failuregroup='Arrester'  and failurepart='LV Arrester'")
	else
        	lv_ar_failure = FailureDatabase.where("failuregroup='Arrester' and failuredetail='#{failuredetail}' and failurepart='LV Arrester'")
	end
        if !lv_ar_failure.nil?
           for i in 0..lv_ar_failure.size-1 do
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and egatsn='#{lv_ar_failure[i].egatsn}'")
              	else
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_type='#{type}' and egatsn='#{lv_ar_failure[i].egatsn}'")
		end
	      else
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_manu='#{manufacturer}' and egatsn='#{lv_ar_failure[i].egatsn}'")
              	else
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_manu='#{manufacturer}' and arrester_lv_type='#{type}' and egatsn='#{lv_ar_failure[i].egatsn}'")
		end

              end

              if !result.nil? and result.size != 0
                f = f + 1
		failure_age << (now.year - (lv_ar_failure[i].downdatetime.to_s.split("-"))[0].to_i)
              end
          end
       end


        if failuredetail == '-- All --'
        	tv_ar_failure = FailureDatabase.where("failuregroup='Arrester' and failurepart='TV Arrester'")
	else
        	tv_ar_failure = FailureDatabase.where("failuregroup='Arrester' and failuredetail='#{failuredetail}' and failurepart='TV Arrester'")
	end
        if !tv_ar_failure.nil?
           for i in 0..tv_ar_failure.size-1 do
	      if manufacturer == '-- All --'
              	if type == '-- All --'
               	 result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and egatsn='#{tv_ar_failure[i].egatsn}'")
              	else
               	 result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_type='#{type}' and egatsn='#{tv_ar_failure[i].egatsn}'")
              	end
              else
              	if type == '-- All --'
               	 result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_manu='#{manufacturer}' and egatsn='#{tv_ar_failure[i].egatsn}'")
              	else
               	 result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_manu='#{manufacturer}' and arrester_tv_type='#{type}' and egatsn='#{tv_ar_failure[i].egatsn}'")
              	end
	      end

              if !result.nil? and result.size != 0
                f = f + 1
		failure_age << (now.year - (tv_ar_failure[i].downdatetime.to_s.split("-"))[0].to_i)
              end
          end
        end
      
      else 
        if failuredetail == '-- All --'
        	hv_oltc_failure = FailureDatabase.where("failuregroup='On - Load Tap Changer'")
	else
        	hv_oltc_failure = FailureDatabase.where("failuregroup='On - Load Tap Changer' and failuredetail='#{failuredetail}'")
	end
        if !hv_oltc_failure.nil?
           for i in 0..hv_oltc_failure.size-1 do
	      if manufacturer == '-- All --'
              	if type == '-- All --'
               	 	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and egatsn='#{hv_oltc_failure[i].egatsn}'")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_type='#{type}' and egatsn='#{hv_oltc_failure[i].egatsn}'")
              	end
	      else
              	if type == '-- All --'
               	 	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_manufacturer='#{manufacturer}' and egatsn='#{hv_oltc_failure[i].egatsn}'")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_manufacturer='#{manufacturer}' and oltc_type='#{type}' and egatsn='#{hv_oltc_failure[i].egatsn}'")
              	end
              end

              if !result.nil? and result.size != 0
                f = f + 1
		failure_age << (now.year - (hv_oltc_failure[i].downdatetime.to_s.split("-"))[0].to_i)
              end
          end
        end
      end

      return f, failure_age
  end


  def self.calculate_f_poisson(equipe, voltage, manufacturer, type, failuredetail, time_interval)
      f = 0
      minvol = voltage.to_f * 0.9
      maxvol = voltage.to_f * 1.1

      if equipe == "Bushing"
        #count hv bushing failure
        if failuredetail == '-- All --'
        	hv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failurepart='HV Bushing' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), downdatetime)), '%Y')+0 < #{time_interval}")
	else
        	hv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failuredetail='#{failuredetail}' and failurepart='HV Bushing' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), downdatetime)), '%Y')+0 < #{time_interval}")
	end
        if !hv_bushing_failure.nil?
           for i in 0..hv_bushing_failure.size-1 do
	      if manufacturer == '-- All --'
              	if type == '-- All --'
               	 result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and egatsn='#{hv_bushing_failure[i].egatsn}'")
              	else
               	 result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_type='#{type}' and egatsn='#{hv_bushing_failure[i].egatsn}'")
              	end
	      else
              	if type == '-- All --'
               	 result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_manu='#{manufacturer}' and egatsn='#{hv_bushing_failure[i].egatsn}'")
              	else
               	 result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_manu='#{manufacturer}' and bushing_hv_type='#{type}' and egatsn='#{hv_bushing_failure[i].egatsn}'")
              	end
              end

              if !result.nil? and result.size != 0
                f = f + 1
              end
          end
        end

        if failuredetail == '-- All --'
        	lv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failurepart='LV Bushing' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), downdatetime)), '%Y')+0 < #{time_interval}")
	else
        	lv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failuredetail='#{failuredetail}' and failurepart='LV Bushing' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), downdatetime)), '%Y')+0 < #{time_interval}")
	end
        if !lv_bushing_failure.nil?
           for i in 0..lv_bushing_failure.size-1 do
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and egatsn='#{lv_bushing_failure[i].egatsn}'")
              	else
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_type='#{type}' and egatsn='#{lv_bushing_failure[i].egatsn}'")
              	end
	      else
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_manu='#{manufacturer}' and egatsn='#{lv_bushing_failure[i].egatsn}'")
              	else
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_manu='#{manufacturer}' and bushing_lv_type='#{type}' and egatsn='#{lv_bushing_failure[i].egatsn}'")
              	end
              end

              if !result.nil? and result.size != 0
                f = f + 1
              end
          end
       end


        if failuredetail == '-- All --'
        	tv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failurepart='TV Bushing' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), downdatetime)), '%Y')+0 < #{time_interval}")
	else
        	tv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failuredetail='#{failuredetail}' and failurepart='TV Bushing' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), downdatetime)), '%Y')+0 < #{time_interval}")
	end
        if !tv_bushing_failure.nil?
           for i in 0..tv_bushing_failure.size-1 do
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and egatsn='#{tv_bushing_failure[i].egatsn}'")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_type='#{type}' and egatsn='#{tv_bushing_failure[i].egatsn}'")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_manu='#{manufacturer}' and egatsn='#{tv_bushing_failure[i].egatsn}'")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_manu='#{manufacturer}' and bushing_tv_type='#{type}' and egatsn='#{tv_bushing_failure[i].egatsn}'")
              	end
              end

              if !result.nil? and result.size != 0
                f = f + 1
              end
          end
        end
     
    elsif equipe == "Arrester"
        #count hv arrester failure
        if failuredetail == '-- All --'
        	hv_ar_failure = FailureDatabase.where("failuregroup='Arrester' and failurepart='HV Arrester' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), downdatetime)), '%Y')+0 < #{time_interval}")
	else
        	hv_ar_failure = FailureDatabase.where("failuregroup='Arrester' and failuredetail='#{failuredetail}' and failurepart='HV Arrester' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), downdatetime)), '%Y')+0 < #{time_interval}")
	end
        if !hv_ar_failure.nil?
           for i in 0..hv_ar_failure.size-1 do
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and egatsn='#{hv_ar_failure[i].egatsn}'")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and arrester_hv_type='#{type}' and egatsn='#{hv_ar_failure[i].egatsn}'")
              	end
             else
              	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and arrester_hv_manu='#{manufacturer}' and egatsn='#{hv_ar_failure[i].egatsn}'")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and arrester_hv_manu='#{manufacturer}' and arrester_hv_type='#{type}' and egatsn='#{hv_ar_failure[i].egatsn}'")
              	end
              end

              if !result.nil? and result.size != 0
                f = f + 1
              end
          end
        end

        if failuredetail == '-- All --'
        	lv_ar_failure = FailureDatabase.where("failuregroup='Arrester' and failurepart='LV Arrester' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), downdatetime)), '%Y')+0 < #{time_interval}")
	else
        	lv_ar_failure = FailureDatabase.where("failuregroup='Arrester' and failuredetail='#{failuredetail}' and failurepart='LV Arrester' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), downdatetime)), '%Y')+0 < #{time_interval}")
	end
        if !lv_ar_failure.nil?
           for i in 0..lv_ar_failure.size-1 do
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and egatsn='#{lv_ar_failure[i].egatsn}'")
              	else
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_type='#{type}' and egatsn='#{lv_ar_failure[i].egatsn}'")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_manu='#{manufacturer}' and egatsn='#{lv_ar_failure[i].egatsn}'")
              	else
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_manu='#{manufacturer}' and arrester_lv_type='#{type}' and egatsn='#{lv_ar_failure[i].egatsn}'")
              	end
              end

              if !result.nil? and result.size != 0
                f = f + 1
              end
          end
       end


        if failuredetail == '-- All --'
        	tv_ar_failure = FailureDatabase.where("failuregroup='Arrester' and failurepart='TV Arrester' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), downdatetime)), '%Y')+0 < #{time_interval}")
	else
        	tv_ar_failure = FailureDatabase.where("failuregroup='Arrester' and failuredetail='#{failuredetail}' and failurepart='TV Arrester' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), downdatetime)), '%Y')+0 < #{time_interval}")
	end
        if !tv_ar_failure.nil?
           for i in 0..tv_ar_failure.size-1 do
	      if manufacturer == '-- All --'
              	if type == '-- All --'
               	 result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol}  and egatsn='#{tv_ar_failure[i].egatsn}'")
              	else
               	 result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol}  and arrester_tv_type='#{type}' and egatsn='#{tv_ar_failure[i].egatsn}'")
              	end
               else
              	if type == '-- All --'
               	 result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_manu='#{manufacturer}' and egatsn='#{tv_ar_failure[i].egatsn}'")
              	else
               	 result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_manu='#{manufacturer}' and arrester_tv_type='#{type}' and egatsn='#{tv_ar_failure[i].egatsn}'")
              	end
               end

              if !result.nil? and result.size != 0
                f = f + 1
              end
          end
        end
      
      else 
        if failuredetail == '-- All --'
        	hv_oltc_failure = FailureDatabase.where("failuregroup='On - Load Tap Changer' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), downdatetime)), '%Y')+0 < #{time_interval}")
	else
        	hv_oltc_failure = FailureDatabase.where("failuregroup='On - Load Tap Changer' and failuredetail='#{failuredetail}' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), downdatetime)), '%Y')+0 < #{time_interval}")
	end
        if !hv_oltc_failure.nil?
           for i in 0..hv_oltc_failure.size-1 do
	      if manufacturer == '-- All --'
              	if type == '-- All --'
               	 	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and egatsn='#{hv_oltc_failure[i].egatsn}'")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_type='#{type}' and egatsn='#{hv_oltc_failure[i].egatsn}'")
              	end
              else
              	if type == '-- All --'
               	 	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_manufacturer='#{manufacturer}' and egatsn='#{hv_oltc_failure[i].egatsn}'")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_manufacturer='#{manufacturer}' and oltc_type='#{type}' and egatsn='#{hv_oltc_failure[i].egatsn}'")
              	end
              end

              if !result.nil? and result.size != 0
                f = f + 1
              end
          end
        end
      end

      return f
  end



  def self.calculate_service_year_normal(equipe, voltage, manufacturer, type)
      total_service_year = 0
      m = 0
      minvol = voltage.to_f * 0.9
      maxvol = voltage.to_f * 1.1

      time = Time.new
      if equipe == "Bushing"
	      #hv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_manu='#{manufacturer}' and bushing_hv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  num_bushing_hv = 0
		  if !result[i].bushing_hv_year.nil? and result[i].bushing_hv_year.size != 0
		          if  !result[i].bushing_hv_h0.nil? and result[i].bushing_hv_h0.length != 0
				num_bushing_hv = num_bushing_hv + 1
			  end
		          if  !result[i].bushing_hv_h1.nil? and result[i].bushing_hv_h1.length != 0
				num_bushing_hv = num_bushing_hv + 1
			  end
		          if  !result[i].bushing_hv_h2.nil? and result[i].bushing_hv_h2.length != 0
				num_bushing_hv = num_bushing_hv + 1
			  end
		          if  !result[i].bushing_hv_h3.nil? and result[i].bushing_hv_h3.length != 0
				num_bushing_hv = num_bushing_hv + 1
			  end

			  service_year = (time.year - result[i].bushing_hv_year)*num_bushing_hv
		  	m = m + num_bushing_hv
		  	total_service_year = total_service_year + service_year
		  end
		end
              end

	      #lv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and status=1")
              	else
               		result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_manu='#{manufacturer}' and status=1")
              	else
               		result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_manu='#{manufacturer}' and bushing_lv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  if !result[i].bushing_lv_year.nil? and result[i].bushing_lv_year.size != 0
		  	num_bushing_lv = 0
		          if  !result[i].bushing_lv_x0.nil? and result[i].bushing_lv_x0.length != 0
				num_bushing_lv = num_bushing_lv + 1
			  end
		          if  !result[i].bushing_lv_x1.nil? and result[i].bushing_lv_x1.length != 0
				num_bushing_lv = num_bushing_lv + 1
			  end
		          if  !result[i].bushing_lv_x2.nil? and result[i].bushing_lv_x2.length != 0
				num_bushing_lv = num_bushing_lv + 1
			  end
		          if  !result[i].bushing_lv_x3.nil? and result[i].bushing_lv_x3.length != 0
				num_bushing_lv = num_bushing_lv + 1
			  end

		  	service_year = (time.year - result[i].bushing_lv_year)*num_bushing_lv
			  m = m + num_bushing_lv
			  total_service_year = total_service_year + service_year
		  end
	      	end
	      end

	      #tv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_manu='#{manufacturer}' and bushing_tv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  num_bushing_tv = 0
		  if !result[i].bushing_tv_year.nil? and result[i].bushing_tv_year.size != 0
	          	if  !result[i].bushing_tv_y1.nil? and result[i].bushing_tv_y1.length != 0
				num_bushing_tv = num_bushing_tv + 1
			  end
		          if  !result[i].bushing_tv_y2.nil? and result[i].bushing_tv_y2.length != 0
				num_bushing_tv = num_bushing_tv + 1
			  end
		          if  !result[i].bushing_tv_y3.nil? and result[i].bushing_tv_y3.length != 0
				num_bushing_tv = num_bushing_tv + 1
			  end

			  service_year = (time.year - result[i].bushing_tv_year)*num_bushing_tv
			  m = m + num_bushing_tv
			  total_service_year = total_service_year + service_year
	           end
                end
              end

      elsif equipe == "Arrester"
	      #hv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and arrester_hv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and arrester_hv_manu='#{manufacturer}' and bushing_hv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  num_ar_hv = 0
		  if !result[i].arrester_hv_year.nil? and result[i].arrester_hv_year.size != 0
	          	if  !result[i].arrester_hv_h1.nil? and result[i].arrester_hv_h1.length != 0
				num_ar_hv = num_ar_hv + 1
			  end
		          if  !result[i].arrester_hv_h2.nil? and result[i].arrester_hv_h2.length != 0
				num_ar_hv = num_ar_hv + 1
			  end
		          if  !result[i].arrester_hv_h3.nil? and result[i].arrester_hv_h3.length != 0
				num_ar_hv = num_ar_hv + 1
			  end

			  service_year = (time.year - result[i].arrester_hv_year)*num_ar_hv
			  m = m + num_ar_hv
			  total_service_year = total_service_year + service_year
                  end
	      	end
               end

	      #lv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_manu='#{manufacturer}' and arrester_lv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  if !result[i].arrester_lv_year.nil? and result[i].arrester_lv_year.size != 0
		  	num_ar_lv = 0
		          if  !result[i].arrester_lv_x1.nil? and result[i].arrester_lv_x1.length != 0
				num_ar_lv = num_ar_lv + 1
			  end
		          if  !result[i].arrester_lv_x2.nil? and result[i].arrester_lv_x2.length != 0
				num_ar_lv = num_ar_lv + 1
			  end
		          if  !result[i].arrester_lv_x3.nil? and result[i].arrester_lv_x3.length != 0
				num_ar_lv = num_ar_lv + 1
			  end

			  service_year = (time.year - result[i].arrester_lv_year)*num_ar_lv
			  m = m + num_ar_lv
			  total_service_year = total_service_year + service_year
		  end
                end
               end

	      #tv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_manu='#{manufacturer}' and arrester_tv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  num_ar_tv = 0
		  if !result[i].arrester_tv_year.nil? and result[i].arrester_tv_year.size != 0
		        if  !result[i].arrester_tv_y1.nil? and result[i].arrester_tv_y1.length != 0
				num_ar_tv = num_ar_tv + 1
		  	end
	          	if  !result[i].arrester_tv_y2.nil? and result[i].arrester_tv_y2.length != 0
				num_ar_tv = num_ar_tv + 1
		        end
		        if  !result[i].arrester_tv_y3.nil? and result[i].arrester_tv_y3.length != 0
				num_ar_tv = num_ar_tv + 1
			end

		  	service_year = (time.year - result[i].arrester_tv_year)*num_ar_tv
		  	m = m + num_ar_tv
		  	total_service_year = total_service_year + service_year
                  end
	      	end
               end

      else
	#Oltc
	      if manufacturer == '-- All --'
	      	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_type='#{type}' and status=1")
              	end
              else
	      	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_manufacturer='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_manufacturer='#{manufacturer}' and oltc_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
	          if  !result[i].oltc_year.nil? and result[i].oltc_year != 0
		  	service_year = time.year - result[i].oltc_year
		  	m = m + 1
		  	total_service_year = total_service_year + service_year
		  end
	      	end
             end
      end

      service_year_m = Array.new
      service_year_m[0] = total_service_year #total service year
      service_year_m[1] = m 

      return service_year_m
  end


  def self.calculate_service_year_poisson(equipe, voltage, manufacturer, type, time_interval)
      total_service_year = 0
      m = 0
      minvol = voltage.to_f * 0.9
      maxvol = voltage.to_f * 1.1

      time = Time.new
      if equipe == "Bushing"
	      #hv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_manu='#{manufacturer}' and bushing_hv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  if !result[i].bushing_hv_year.nil? and result[i].bushing_hv_year.size != 0
		  	num_bushing_hv = 0
	          	if  !result[i].bushing_hv_h0.nil? and result[i].bushing_hv_h0.length != 0
				num_bushing_hv = num_bushing_hv + 1
		  	end
	          	if  !result[i].bushing_hv_h1.nil? and result[i].bushing_hv_h1.length != 0
				num_bushing_hv = num_bushing_hv + 1
		  	end
	          	if  !result[i].bushing_hv_h2.nil? and result[i].bushing_hv_h2.length != 0
				num_bushing_hv = num_bushing_hv + 1
		  	end
	          	if  !result[i].bushing_hv_h3.nil? and result[i].bushing_hv_h3.length != 0
				num_bushing_hv = num_bushing_hv + 1
		  	end

		  	service_year = (time.year - result[i].bushing_hv_year)
		  	if service_year >= time_interval
				service_year = time_interval
                  	end
		  	service_year = service_year * num_bushing_hv
		  	m = m + num_bushing_hv
		  	total_service_year = total_service_year + service_year
		end
	       end
	      end

	      #lv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol}  and status=1")
              	else
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol}  and bushing_lv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_manu='#{manufacturer}' and bushing_lv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  if !result[i].bushing_lv_year.nil? and result[i].bushing_lv_year.size != 0
		  	num_bushing_lv = 0
		          if  !result[i].bushing_lv_x0.nil? and result[i].bushing_lv_x0.length != 0
				num_bushing_lv = num_bushing_lv + 1
			  end
		          if  !result[i].bushing_lv_x1.nil? and result[i].bushing_lv_x1.length != 0
				num_bushing_lv = num_bushing_lv + 1
			  end
		          if  !result[i].bushing_lv_x2.nil? and result[i].bushing_lv_x2.length != 0
				num_bushing_lv = num_bushing_lv + 1
			  end
		          if  !result[i].bushing_lv_x3.nil? and result[i].bushing_lv_x3.length != 0
				num_bushing_lv = num_bushing_lv + 1
			  end

			  service_year = (time.year - result[i].bushing_lv_year)
			  if service_year >= time_interval
				service_year = time_interval
			  end
			  service_year = service_year * num_bushing_lv
			  m = m + num_bushing_lv
			  total_service_year = total_service_year + service_year
		 end
                end
               end

	      #tv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_manu='#{manufacturer}' and bushing_tv_type='#{type}' and status=1")
              	end
	      end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  if !result[i].bushing_tv_year.nil? and result[i].bushing_tv_year.size != 0
		  	num_bushing_tv = 0
		          if  !result[i].bushing_tv_y1.nil? and result[i].bushing_tv_y1.length != 0
				num_bushing_tv = num_bushing_tv + 1
			  end
		          if  !result[i].bushing_tv_y2.nil? and result[i].bushing_tv_y2.length != 0
				num_bushing_tv = num_bushing_tv + 1
			  end
		          if  !result[i].bushing_tv_y3.nil? and result[i].bushing_tv_y3.length != 0
				num_bushing_tv = num_bushing_tv + 1
			  end

			  service_year = (time.year - result[i].bushing_tv_year)
			  if service_year >= time_interval
				service_year = time_interval
			  end
			  service_year = service_year * num_bushing_tv
			  m = m + num_bushing_tv
			  total_service_year = total_service_year + service_year
		 end
                end
              end

      elsif equipe == "Arrester"
	      #hv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and arrester_hv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and arrester_hv_manu='#{manufacturer}' and bushing_hv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  if !result[i].arrester_hv_year.nil? and result[i].arrester_hv_year.size != 0
		  	num_ar_hv = 0
		          if  !result[i].arrester_hv_h1.nil? and result[i].arrester_hv_h1.length != 0
				num_ar_hv = num_ar_hv + 1
			  end
		          if  !result[i].arrester_hv_h2.nil? and result[i].arrester_hv_h2.length != 0
				num_ar_hv = num_ar_hv + 1
			  end
		          if  !result[i].arrester_hv_h3.nil? and result[i].arrester_hv_h3.length != 0
				num_ar_hv = num_ar_hv + 1
			  end

			  service_year = (time.year - result[i].arrester_hv_year)
			  if service_year >= time_interval
				service_year = time_interval
			  end
			  service_year = service_year * num_ar_hv
			  m = m + num_ar_hv
			  total_service_year = total_service_year + service_year
	      	end
               end
	      end

	      #lv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol}  and status=1")
              	else
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol}  and arrester_lv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_manu='#{manufacturer}' and arrester_lv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  if !result[i].arrester_lv_year.nil? and result[i].arrester_lv_year.size != 0
		  num_ar_lv = 0
	          if  !result[i].arrester_lv_x1.nil? and result[i].arrester_lv_x1.length != 0
			num_ar_lv = num_ar_lv + 1
		  end
	          if  !result[i].arrester_lv_x2.nil? and result[i].arrester_lv_x2.length != 0
			num_ar_lv = num_ar_lv + 1
		  end
	          if  !result[i].arrester_lv_x3.nil? and result[i].arrester_lv_x3.length != 0
			num_ar_lv = num_ar_lv + 1
		  end

		  service_year = (time.year - result[i].arrester_lv_year)
		  if service_year >= time_interval
			service_year = time_interval
		  end
		  service_year = service_year * num_ar_lv
		  m = m + num_ar_lv
		  total_service_year = total_service_year + service_year
	      	end
                end
               end

	      #tv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol}  and status=1")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol}  and arrester_tv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_manu='#{manufacturer}' and arrester_tv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  if !result[i].arrester_tv_year.nil? and result[i].arrester_tv_year.size != 0
		  num_ar_tv = 0
	          if  !result[i].arrester_tv_y1.nil? and result[i].arrester_tv_y1.length != 0
			num_ar_tv = num_ar_tv + 1
		  end
	          if  !result[i].arrester_tv_y2.nil? and result[i].arrester_tv_y2.length != 0
			num_ar_tv = num_ar_tv + 1
		  end
	          if  !result[i].arrester_tv_y3.nil? and result[i].arrester_tv_y3.length != 0
			num_ar_tv = num_ar_tv + 1
		  end

		  service_year = (time.year - result[i].arrester_tv_year)
		  if service_year >= time_interval
			service_year = time_interval
		  end

		  service_year = service_year * num_ar_tv
		  m = m + num_ar_tv
		  total_service_year = total_service_year + service_year
	      	end
                end
               end

      else
	      if manufacturer == '-- All --'
	      	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol}  and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_type='#{type}' and status=1")
              	end
              else
	      	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_manufacturer='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_manufacturer='#{manufacturer}' and oltc_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
	          if  !result[i].oltc_year.nil? and result[i].oltc_year != 0
		  	service_year = time.year - result[i].oltc_year
		  	if service_year >= time_interval
				service_year = time_interval
		  	end
		  	m = m + 1
		  	total_service_year = total_service_year + service_year
		  end
	      	end
              end
      end

      service_year_m = Array.new
      service_year_m[0] = total_service_year #total service year
      service_year_m[1] = m 

      return service_year_m
  end

  #todo
  def self.get_weibull_equipement(equipe, voltage, manufacturer, type)
      minvol = voltage.to_f * 0.9
      maxvol = voltage.to_f * 1.1

      txinfo = Array.new
      numElement = 0

      time = Time.new
      if equipe == "Bushing"
	      #hv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_manu='#{manufacturer}' and bushing_hv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  if !result[i].bushing_hv_year.nil? and result[i].bushing_hv_year.size != 0
			num_bushing_hv = 0

			txinfo[numElement] = Hash.new
			txinfo[numElement]["name"] = result[i].transformer_name
			txinfo[numElement]["egatsn"] = result[i].egatsn
			txinfo[numElement]["terminal"] = Array.new
			txinfo[numElement]["serial"] = Array.new

		          if  !result[i].bushing_hv_h0.nil? and result[i].bushing_hv_h0.length != 0
				txinfo[numElement]["terminal"][num_bushing_hv] = "H0"
				txinfo[numElement]["serial"][num_bushing_hv] = result[i].bushing_hv_h0
				num_bushing_hv = num_bushing_hv + 1
			  end
		          if  !result[i].bushing_hv_h1.nil? and result[i].bushing_hv_h1.length != 0
				txinfo[numElement]["terminal"][num_bushing_hv] = "H1"
				txinfo[numElement]["serial"][num_bushing_hv] = result[i].bushing_hv_h1
				num_bushing_hv = num_bushing_hv + 1
			  end
		          if  !result[i].bushing_hv_h2.nil? and result[i].bushing_hv_h2.length != 0
				txinfo[numElement]["terminal"][num_bushing_hv] = "H2"
				txinfo[numElement]["serial"][num_bushing_hv] = result[i].bushing_hv_h2
				num_bushing_hv = num_bushing_hv + 1
			  end
		          if  !result[i].bushing_hv_h3.nil? and result[i].bushing_hv_h3.length != 0
				txinfo[numElement]["terminal"][num_bushing_hv] = "H3"
				txinfo[numElement]["serial"][num_bushing_hv] = result[i].bushing_hv_h3
				num_bushing_hv = num_bushing_hv + 1
			  end

			  txinfo[numElement]["service_year"] = time.year - result[i].bushing_hv_year
			  numElement = numElement + 1
		  end
		end
              end

	      #lv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and status=1")
              	else
               		result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_manu='#{manufacturer}' and status=1")
              	else
               		result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_manu='#{manufacturer}' and bushing_lv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  if !result[i].bushing_lv_year.nil? and result[i].bushing_lv_year.size != 0
		  	num_bushing_lv = 0
			txinfo[numElement] = Hash.new
			txinfo[numElement]["name"] = result[i].transformer_name
			txinfo[numElement]["egatsn"] = result[i].egatsn
			txinfo[numElement]["terminal"] = Array.new
			txinfo[numElement]["serial"] = Array.new


		          if  !result[i].bushing_lv_x0.nil? and result[i].bushing_lv_x0.length != 0
				txinfo[numElement]["terminal"][num_bushing_lv] = "X0"
				txinfo[numElement]["serial"][num_bushing_lv] = result[i].bushing_lv_x0
				num_bushing_lv = num_bushing_lv + 1
			  end
		          if  !result[i].bushing_lv_x1.nil? and result[i].bushing_lv_x1.length != 0
				txinfo[numElement]["terminal"][num_bushing_lv] = "X1"
				txinfo[numElement]["serial"][num_bushing_lv] = result[i].bushing_lv_x1
				num_bushing_lv = num_bushing_lv + 1
			  end
		          if  !result[i].bushing_lv_x2.nil? and result[i].bushing_lv_x2.length != 0
				txinfo[numElement]["terminal"][num_bushing_lv] = "X2"
				txinfo[numElement]["serial"][num_bushing_lv] = result[i].bushing_lv_x2
				num_bushing_lv = num_bushing_lv + 1
			  end
		          if  !result[i].bushing_lv_x3.nil? and result[i].bushing_lv_x3.length != 0
				txinfo[numElement]["terminal"][num_bushing_lv] = "X3"
				txinfo[numElement]["serial"][num_bushing_lv] = result[i].bushing_lv_x3
				num_bushing_lv = num_bushing_lv + 1
			  end

			  txinfo[numElement]["service_year"] = time.year - result[i].bushing_lv_year
			  numElement = numElement + 1
		  end
	      	end
	      end

	      #tv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_manu='#{manufacturer}' and bushing_tv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  if !result[i].bushing_tv_year.nil? and result[i].bushing_tv_year.size != 0
		  	num_bushing_tv = 0
			txinfo[numElement] = Hash.new
			txinfo[numElement]["name"] = result[i].transformer_name
			txinfo[numElement]["egatsn"] = result[i].egatsn
			txinfo[numElement]["terminal"] = Array.new
			txinfo[numElement]["serial"] = Array.new

	          	if  !result[i].bushing_tv_y1.nil? and result[i].bushing_tv_y1.length != 0
				txinfo[numElement]["terminal"][num_bushing_tv] = "Y1"
				txinfo[numElement]["serial"][num_bushing_tv] = result[i].bushing_tv_y1
				num_bushing_tv = num_bushing_tv + 1
			  end
		          if  !result[i].bushing_tv_y2.nil? and result[i].bushing_tv_y2.length != 0
				txinfo[numElement]["terminal"][num_bushing_tv] = "Y2"
				txinfo[numElement]["serial"][num_bushing_tv] = result[i].bushing_tv_y2
				num_bushing_tv = num_bushing_tv + 1
			  end
		          if  !result[i].bushing_tv_y3.nil? and result[i].bushing_tv_y3.length != 0
				txinfo[numElement]["terminal"][num_bushing_tv] = "Y3"
				txinfo[numElement]["serial"][num_bushing_tv] = result[i].bushing_tv_y3
				num_bushing_tv = num_bushing_tv + 1
			  end

			  txinfo[numElement]["service_year"] = time.year - result[i].bushing_tv_year
			  numElement = numElement + 1
	           end
                end
              end

      elsif equipe == "Arrester"
	      #hv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and arrester_hv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and arrester_hv_manu='#{manufacturer}' and bushing_hv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  num_ar_hv = 0
		  if !result[i].arrester_hv_year.nil? and result[i].arrester_hv_year.size != 0
			txinfo[numElement] = Hash.new
			txinfo[numElement]["name"] = result[i].transformer_name
			txinfo[numElement]["egatsn"] = result[i].egatsn
			txinfo[numElement]["terminal"] = Array.new
			txinfo[numElement]["serial"] = Array.new

	          	if  !result[i].arrester_hv_h1.nil? and result[i].arrester_hv_h1.length != 0
				txinfo[numElement]["terminal"][num_ar_hv] = "H1"
				txinfo[numElement]["serial"][num_ar_hv] = result[i].arrester_hv_h1
				num_ar_hv = num_ar_hv + 1
			  end
		          if  !result[i].arrester_hv_h2.nil? and result[i].arrester_hv_h2.length != 0
				txinfo[numElement]["terminal"][num_ar_hv] = "H2"
				txinfo[numElement]["serial"][num_ar_hv] = result[i].arrester_hv_h2
				num_ar_hv = num_ar_hv + 1
			  end
		          if  !result[i].arrester_hv_h3.nil? and result[i].arrester_hv_h3.length != 0
				txinfo[numElement]["terminal"][num_ar_hv] = "H3"
				txinfo[numElement]["serial"][num_ar_hv] = result[i].arrester_hv_h3
				num_ar_hv = num_ar_hv + 1
			  end

			  txinfo[numElement]["service_year"] = time.year - result[i].arrester_hv_year
			  numElement = numElement + 1
                  end
	      	end
               end

	      #lv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_manu='#{manufacturer}' and arrester_lv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  if !result[i].arrester_lv_year.nil? and result[i].arrester_lv_year.size != 0
		  	num_ar_lv = 0
			txinfo[numElement] = Hash.new
			txinfo[numElement]["name"] = result[i].transformer_name
			txinfo[numElement]["egatsn"] = result[i].egatsn
			txinfo[numElement]["terminal"] = Array.new
			txinfo[numElement]["serial"] = Array.new
		          if  !result[i].arrester_lv_x1.nil? and result[i].arrester_lv_x1.length != 0
				txinfo[numElement]["terminal"][num_ar_lv] = "X1"
				txinfo[numElement]["serial"][num_ar_lv] = result[i].arrester_lv_x1
				num_ar_lv = num_ar_lv + 1
			  end
		          if  !result[i].arrester_lv_x2.nil? and result[i].arrester_lv_x2.length != 0
				txinfo[numElement]["terminal"][num_ar_lv] = "X2"
				txinfo[numElement]["serial"][num_ar_lv] = result[i].arrester_lv_x2
				num_ar_lv = num_ar_lv + 1
			  end
		          if  !result[i].arrester_lv_x3.nil? and result[i].arrester_lv_x3.length != 0
				txinfo[numElement]["terminal"][num_ar_lv] = "X3"
				txinfo[numElement]["serial"][num_ar_lv] = result[i].arrester_lv_x3
				num_ar_lv = num_ar_lv + 1
			  end

			  txinfo[numElement]["service_year"] = time.year - result[i].arrester_lv_year
			  numElement = numElement + 1
		  end
                end
               end

	      #tv calculation
	      if manufacturer == '-- All --'
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_type='#{type}' and status=1")
              	end
              else
              	if type == '-- All --'
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_manu='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_manu='#{manufacturer}' and arrester_tv_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
		  num_ar_tv = 0
		  if !result[i].arrester_tv_year.nil? and result[i].arrester_tv_year.size != 0
			txinfo[numElement] = Hash.new
			txinfo[numElement]["name"] = result[i].transformer_name
			txinfo[numElement]["egatsn"] = result[i].egatsn
			txinfo[numElement]["terminal"] = Array.new
			txinfo[numElement]["serial"] = Array.new
		        if  !result[i].arrester_tv_y1.nil? and result[i].arrester_tv_y1.length != 0
				txinfo[numElement]["terminal"][num_ar_tv] = "Y1"
				txinfo[numElement]["serial"][num_ar_tv] = result[i].arrester_tv_y1
				num_ar_tv = num_ar_tv + 1
		  	end
	          	if  !result[i].arrester_tv_y2.nil? and result[i].arrester_tv_y2.length != 0
				txinfo[numElement]["terminal"][num_ar_tv] = "Y2"
				txinfo[numElement]["serial"][num_ar_tv] = result[i].arrester_tv_y2
				num_ar_tv = num_ar_tv + 1
		        end
		        if  !result[i].arrester_tv_y3.nil? and result[i].arrester_tv_y3.length != 0
				txinfo[numElement]["terminal"][num_ar_tv] = "Y3"
				txinfo[numElement]["serial"][num_ar_tv] = result[i].arrester_tv_y3
				num_ar_tv = num_ar_tv + 1
			end

			  txinfo[numElement]["service_year"] = time.year - result[i].arrester_tv_year
			  numElement = numElement + 1
                  end
	      	end
               end

      else
	#Oltc
	      if manufacturer == '-- All --'
	      	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_type='#{type}' and status=1")
              	end
              else
	      	if type == '-- All --'
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_manufacturer='#{manufacturer}' and status=1")
              	else
                	result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_manufacturer='#{manufacturer}' and oltc_type='#{type}' and status=1")
              	end
              end

              if !result.nil? and result.size != 0
	      	for i in 0..result.size-1 do
	          if  !result[i].oltc_year.nil? and result[i].oltc_year != 0
			txinfo[numElement] = Hash.new
			txinfo[numElement]["name"] = result[i].transformer_name
			txinfo[numElement]["egatsn"] = result[i].egatsn
			txinfo[numElement]["terminal"] = Array.new
			txinfo[numElement]["serial"] = Array.new
			txinfo[numElement]["terminal"][0] = "-"
			txinfo[numElement]["serial"][0] = "-" 
			txinfo[numElement]["service_year"] = time.year - result[i].oltc_year
			numElement = numElement + 1
		  end
	      	end
             end
      end

      return txinfo
  end


  def self.get_transformer_egatsn(egatsn)
	where("egatsn = '#{egatsn}'").first
    	rescue Exception
      	return nil
  end

  def self.graph1(start_year, end_year)
     result = where("DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), first_energize)), '%Y')+0 >= #{start_year} and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), first_energize)), '%Y')+0 <= #{end_year}").select("DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), first_energize)), '%Y')+0 AS noyear, count(*) AS numtx").group("noyear")

      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = i.noyear
            graphdata[n][1] = i.numtx
            n = n + 1
            numtotal = numtotal + i.numtx
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end

      return [graphdata, graphpercent]
 
  end

  def self.graph2
      result   = find_by_sql("SELECT manufacuturer, count(*) AS numtx FROM `transformer` LEFT OUTER JOIN \
                              (SELECT distinct id, manufacturer from manufacturer_txes) A  ON transformer.brand_id = A.id group by manufacturer")
      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = i.manuname
            graphdata[n][1] = i.numtx
            n = n + 1
            numtotal = numtotal + i.numtx
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end

      return [graphdata, graphpercent]
  end

  def self.graph3
      result   = find_by_sql("SELECT region, count(*) AS numtx FROM `transformer` LEFT OUTER JOIN \
                              (SELECT distinct name, region from stations) A  ON transformer.station = A.name group by region")

      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = i.region
            graphdata[n][1] = i.numtx
            n = n + 1
            numtotal = numtotal + i.numtx
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end

      return [graphdata, graphpercent]
  end

end
