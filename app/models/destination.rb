class Destination < ActiveRecord::Base

validates :destination, :presence => true
validates :country, :presence => true
validates :comments, :presence => true

belongs_to :user

has_many :activity , :class_name => "Daily", :foreign_key => "destination_id"

end
