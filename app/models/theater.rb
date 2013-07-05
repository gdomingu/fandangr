class Theater < ActiveRecord::Base
  attr_accessible :address, :name, :num_of_rooms

  validates :name, :presence => true
  validates :address, :presence => true
  validates :num_of_rooms, :presence => true
end
