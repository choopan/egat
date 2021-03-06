# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)


def truncate_db_table(table)
     config = ActiveRecord::Base.configurations[Rails.env]
     ActiveRecord::Base.establish_connection
     case config["adapter"]
       when "mysql"
         ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
       when "sqlite", "sqlite3"
         ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
         ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence where name='#{table}'")
         ActiveRecord::Base.connection.execute("VACUUM")
     end
   end

truncate_db_table("brands")
open("db/initial_data/brands.txt") do |brands|
  brands.read.each_line do |brand|
    name, score, score_message = brand.split(',')
    Brand.create({:name => name.strip, :score => score.strip, 
                  :score_message => score_message.strip})
  end
end

ApplicationUse.delete_all
open("db/initial_data/application_use.txt") do |application_uses|
  application_uses.read.each_line do |application_use|
    value, score, score_message = application_use.split(',')
    ApplicationUse.create({:value => value.strip, :score => score.strip,
                           :score_message => score_message.strip})
  end
end

BusVoltageHv.delete_all
open("db/initial_data/bus_voltage_hv.txt") do |bus_voltage_hvs|
  bus_voltage_hvs.read.each_line do |bus_voltage_hv|
    BusVoltageHv.create({:value => bus_voltage_hv.strip})
  end
end

BusVoltageLv.delete_all
open("db/initial_data/bus_voltage_lv.txt") do |bus_voltage_lvs|
  bus_voltage_lvs.read.each_line do |bus_voltage_lv|
    BusVoltageLv.create({:value => bus_voltage_lv.strip})
  end
end

DamageOfProperty.delete_all
open("db/initial_data/damage_of_property.txt") do |damage_of_properties|
  damage_of_properties.read.each_line do |damage_of_property|
    value, message = damage_of_property.split(',')
    DamageOfProperty.create({:value => value.strip, :message => message.strip})
  end
end

Pollution.delete_all
open("db/initial_data/pollution.txt") do |pollutions|
  pollutions.read.each_line do |pollution|
    value, score, score_message = pollution.split(',')
    Pollution.create({:value => value.strip, :score => score.strip, 
                      :score_message => score_message.strip})
  end
end

ProbabilityOfForceOutage.delete_all
filename = "db/initial_data/probability_of_force_outage.txt"
open(filename) do |probability_of_force_outages|
  probability_of_force_outages.read.each_line do |probability_of_force_outage|
    value, score, score_message = probability_of_force_outage.split(',')
    ProbabilityOfForceOutage.create({:value => value.strip,
                                     :score => score.strip,
                                     :score_message => score_message.strip})
  end
end

SocialAspect.delete_all
open("db/initial_data/social_aspect.txt") do |social_aspects|
  social_aspects.read.each_line do |social_aspect|
    value, score, score_message = social_aspect.split(',')
    SocialAspect.create({:value => value.strip, :score => score.strip,
                         :score_message => score_message.strip })
  end
end

SystemLocation.delete_all
open("db/initial_data/system_location.txt") do |system_locations|
  system_locations.read.each_line do |system_location|
    value, score, score_message = system_location.split(',')
    SystemLocation.create({:value => value.strip, :score => score.strip,
                           :score_message => score_message.strip})
  end
end

SystemStability.delete_all
open("db/initial_data/system_stability.txt") do |system_stabilities|
  system_stabilities.read.each_line do |system_stability|
    value, score, score_message = system_stability.split(',')
    SystemStability.create({:value => value.strip,
                            :score => score.strip,
                            :score_message => score_message.strip})
  end
end

N1Criteria.delete_all
open("db/initial_data/n1_criteria.txt") do |n1_criterias|
  n1_criterias.read.each_line do |n1_criteria|
    value, score, score_message = n1_criteria.split(',')
    N1Criteria.create({:value => value.strip, :score => score.strip,
                       :score_message => score_message.strip})
  end
end

PublicImage.delete_all
open("db/initial_data/public_image.txt") do |public_images|
  public_images.read.each_line do |public_image|
    value, score, score_message = public_image.split(',')
    PublicImage.create({:value => value.strip, :score => score.strip,
                        :score_message => score_message.strip})
  end
end

LoadPatternFactor.delete_all
open("db/initial_data/load_pattern_factor.txt") do |load_pattern_factors|
  load_pattern_factors.read.each_line do |load_pattern_factor|
    start, stop, score, score_message = load_pattern_factor.split(',')
    LoadPatternFactor.create({:start => start.strip, :end => stop.strip,
                              :score => score.strip,
                              :score_message => score_message.strip})
  end
end

BusVoltage.delete_all
open("db/initial_data/bus_voltage.txt") do |bus_voltages|
  bus_voltages.read.each_line do |bus_voltage|
    start, stop = bus_voltage.split(',')
    BusVoltage.create({:start => start.strip, :end => stop.strip})
  end
end

SystemFaultLevel.delete_all
open("db/initial_data/system_fault_level1.txt") do |system_fault_levels|
  system_fault_levels.read.each_line do |system_fault_level|
    start, stop, score, score_message = system_fault_level.split(',')
    bus_voltage = BusVoltage.find(:first, :conditions => ["start = '116'"])
    SystemFaultLevel.create({:start => start.strip, :end => stop.strip, 
                       :score => score.strip, 
                       :score_message => score_message.strip,
                       :bus_voltage_id => bus_voltage.id})
  end
end
open("db/initial_data/system_fault_level2.txt") do |system_fault_levels|
  system_fault_levels.read.each_line do |system_fault_level|
    start, stop, score, score_message = system_fault_level.split(',')
    bus_voltage = BusVoltage.find(:first, :conditions => ["start = '0' and end = '115'"])
    SystemFaultLevel.create({:start => start.strip, :end => stop.strip, 
                             :score => score.strip, 
                             :score_message => score_message.strip,
                             :bus_voltage_id => bus_voltage.id})
  end
end
