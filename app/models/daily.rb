class Daily < ActiveRecord::Base

belongs_to :user

belongs_to :destination

validates :destination_id, :presence => true
validates :activity, :presence => true
validates :location, :presence => true
validates :day, :presence => true

validate :day_cannot_be_in_the_past

  def day_cannot_be_in_the_past
    errors.add(:activity, "can't be in the past") if
      !day.blank? and day < Date.today
  end

end
