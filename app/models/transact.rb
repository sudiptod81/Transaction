class Transact < ActiveRecord::Base
  attr_accessible :card_id,:vendor_id,:amount, :date
  def self.to_csv(x,z)
    attributes = %w{card_id vendor_id amount date}
    CSV.generate do |csv|
      csv << attributes
      if z!=0
        if x!=0
          puts where(:date=>x,:vendor_id=>z).inspect
          where(:date=>x,:vendor_id=>z).each do |y|
            csv<< y.attributes.values_at(*attributes)
          end
        else
          where(:vendor_id=>z).each do |y|
            csv<< y.attributes.values_at(*attributes)
          end
        end
      else
        if x!=0
          where(:date=>x).each do |y|
            csv<< y.attributes.values_at(*attributes)
          end
        end
      end
    end
  end
end
