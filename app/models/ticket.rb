class Ticket < ActiveRecord::Base
  attr_accessible :price, :screening_id, :seat_num, :user_id

  validates :screening_id, :seat_num, :presence => true
  # validate :seat_num_cannot_be_greater_than_num_of_seats
  #   def seat_num_cannot_be_greater_than_num_of_seats
  #     if seat_num > num_of_seats
  #       errors.add(:seat_num "is not a valid seat... ")
  #     end
  #   end
  belongs_to :screening
  belongs_to :user
end
