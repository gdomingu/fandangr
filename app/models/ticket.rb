class Ticket < ActiveRecord::Base
  attr_accessible :price, :screening_id, :seat_num, :user_id


end
