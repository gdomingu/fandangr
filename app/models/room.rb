class Room < ActiveRecord::Base
  attr_accessible :num_of_seats, :room_number, :theater_id, :type
belongs_to :theater
end
