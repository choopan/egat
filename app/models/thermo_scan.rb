# == Schema Information
# Schema version: 20110208051447
#
# Table name: thermo_scans
#
#  id                   :integer(4)      not null, primary key
#  delt                 :float
#  load                 :float
#  visual_inspection_id :integer(4)
#

class ThermoScan < ActiveRecord::Base
  belongs_to :visual_inspection

  def hi_factor
    ThermoScanFactor.all.each do |i|
      i.delta_end = 1000000 if i.delta_end.nil?
      unless self.delt.blank? && self.load.blank?
        if self.delt.round.between?(i.delta_start, i.delta_end) && self.load.round.between?(i.load_start, i.load_end)
          return i.hi_factor
        end
      end
    end
  end

  def self.most_recent(transformer)
    visual_inspections = VisualInspection.where("transformer_id = ?", transformer.id).order("test_date DESC")
    visual_inspections.each do |visual_inspection|
      unless(visual_inspection.thermo_scan.delt.nil? &&
             visual_inspection.thermo_scan.load.nil?)
        return visual_inspection.thermo_scan
      end
    end
  end

end
