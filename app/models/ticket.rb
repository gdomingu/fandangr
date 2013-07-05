class Ticket < ActiveRecord::Base
  attr_accessible :price, :screening_id, :seat_num, :user_id

  validates :price, :screening_id, :seat_num, :presence => true
  belongs_to :screening
  belongs_to :user
end
