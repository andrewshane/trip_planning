class Daily < ActiveRecord::Base

belongs_to :user

belongs_to :destination

validates :destination_id, :presence => true

validates :day, :presence => true

end
