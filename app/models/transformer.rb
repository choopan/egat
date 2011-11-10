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
        result = Transformer.find_by_sql("(SELECT DISTINCT bushing_hv_type FROM transformer WHERE bushing_hv_manu='#{id}') UNION (SELECT DISTINCT bushing_lv_type FROM transformer WHERE bushing_lv_manu='#{id}') UNION (SELECT DISTINCT bushing_tv_type FROM transformer WHERE bushing_tv_manu='#{id}')");
        return result
  end


  def self.get_arrester_type(id)
        result = Transformer.find_by_sql("(SELECT DISTINCT arrester_hv_type FROM transformer WHERE arrester_hv_manu='#{id}') UNION (SELECT DISTINCT arrester_lv_type FROM transformer WHERE arrester_lv_manu='#{id}') UNION (SELECT DISTINCT arrester_tv_type FROM transformer WHERE arrester_tv_manu='#{id}')");
        return result
  end

  def self.get_oltc_type(id)
        where("oltc_manufacturer='#{id}'").group(:oltc_type)
  end

  def self.calculate_f_normal_weibull(equipe, voltage, manufacturer, type, failuredetail)
      f = 0
      minvol = voltage.to_f * 0.9
      maxvol = voltage.to_f * 1.1

      if equipe == "Bushing"
        #count hv bushing failure
        hv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failuredetail='#{failuredetail}' and failurepart='HV Bushing'")
        if !hv_bushing_failure.nil?
           for i in 0..hv_bushing_failure.size-1 do
              if type == '0'
                result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_manu='#{manufacturer}' and egatsn='#{hv_bushing_failure[i].egatsn}'")
              else
                result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and bushing_hv_manu='#{manufacturer}' and bushing_hv_type='#{type}' and egatsn='#{hv_bushing_failure[i].egatsn}'")
              end

              if !result.nil? and result.size != 0
                f = f + 1
              end
          end
        end

        lv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failuredetail='#{failuredetail}' and failurepart='LV Bushing'")
        if !lv_bushing_failure.nil?
           for i in 0..lv_bushing_failure.size-1 do
              if type == '0'
                result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_manu='#{manufacturer}' and egatsn='#{lv_bushing_failure[i].egatsn}'")
              else
                result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and bushing_lv_manu='#{manufacturer}' and bushing_lv_type='#{type}' and egatsn='#{lv_bushing_failure[i].egatsn}'")
              end

              if !result.nil? and result.size != 0
                f = f + 1
              end
          end
       end


        tv_bushing_failure = FailureDatabase.where("failuregroup='Bushing' and failuredetail='#{failuredetail}' and failurepart='TV Bushing'")
        if !tv_bushing_failure.nil?
           for i in 0..tv_bushing_failure.size-1 do
              if type == '0'
                result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_manu='#{manufacturer}' and egatsn='#{tv_bushing_failure[i].egatsn}'")
              else
                result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and bushing_tv_manu='#{manufacturer}' and bushing_tv_type='#{type}' and egatsn='#{tv_bushing_failure[i].egatsn}'")
              end

              if !result.nil? and result.size != 0
                f = f + 1
              end
          end
        end
     
    elsif equipe == "Arrester"
        #count hv arrester failure
        hv_ar_failure = FailureDatabase.where("failuregroup='Arrester' and failuredetail='#{failuredetail}' and failurepart='HV Arrester'")
        if !hv_ar_failure.nil?
           for i in 0..hv_ar_failure.size-1 do
              if type == '0'
                result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and arrester_hv_manu='#{manufacturer}' and egatsn='#{hv_ar_failure[i].egatsn}'")
              else
                result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and arrester_hv_manu='#{manufacturer}' and arrester_hv_type='#{type}' and egatsn='#{hv_ar_failure[i].egatsn}'")
              end

              if !result.nil? and result.size != 0
                f = f + 1
              end
          end
        end

        lv_ar_failure = FailureDatabase.where("failuregroup='Arrester' and failuredetail='#{failuredetail}' and failurepart='LV Arrester'")
        if !lv_ar_failure.nil?
           for i in 0..lv_ar_failure.size-1 do
              if type == '0'
                result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_manu='#{manufacturer}' and egatsn='#{lv_ar_failure[i].egatsn}'")
              else
                result = Transformer.where("lv >= #{minvol} and lv <= #{maxvol} and arrester_lv_manu='#{manufacturer}' and arrester_lv_type='#{type}' and egatsn='#{lv_ar_failure[i].egatsn}'")
              end

              if !result.nil? and result.size != 0
                f = f + 1
              end
          end
       end


        tv_ar_failure = FailureDatabase.where("failuregroup='Arrester' and failuredetail='#{failuredetail}' and failurepart='TV Arrester'")
        if !tv_ar_failure.nil?
           for i in 0..tv_ar_failure.size-1 do
              if type == '0'
                result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_manu='#{manufacturer}' and egatsn='#{tv_ar_failure[i].egatsn}'")
              else
                result = Transformer.where("tv >= #{minvol} and tv <= #{maxvol} and arrester_tv_manu='#{manufacturer}' and arrester_tv_type='#{type}' and egatsn='#{tv_ar_failure[i].egatsn}'")
              end

              if !result.nil? and result.size != 0
                f = f + 1
              end
          end
        end
      
      else 
        hv_oltc_failure = FailureDatabase.where("failuregroup='On - Load Tap Changer' and failuredetail='#{failuredetail}'")
        if !hv_oltc_failure.nil?
           for i in 0..hv_oltc_failure.size-1 do
              if type == '0'
                result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_manufacturer='#{manufacturer}' and egatsn='#{hv_oltc_failure[i].egatsn}'")
              else
                result = Transformer.where("hv >= #{minvol} and hv <= #{maxvol} and oltc_manufacturer='#{manufacturer}' and oltc_type='#{type}' and egatsn='#{hv_oltc_failure[i].egatsn}'")
              end

              if !result.nil? and result.size != 0
                f = f + 1
              end
          end
        end
      end

      return f
  end
end
