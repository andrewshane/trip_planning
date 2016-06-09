class Daily < ActiveRecord::Base

belongs_to :destination

validates :destination_id, :presence => true
belongs_to(:destination, :class_name => "Destination", :foreign_key => "destination_id")

validates :day, :presence => true

end
