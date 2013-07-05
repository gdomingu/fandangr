class Room < ActiveRecord::Base
  attr_accessible :num_of_seats, :room_number, :theater_id, :screen
belongs_to :theater

validates :num_of_seats, :room_number, :theater_id, :screen, :presence => true

has_many :screenings
end
