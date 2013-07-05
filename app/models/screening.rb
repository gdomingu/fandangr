class Screening < ActiveRecord::Base
  attr_accessible :name, :rating, :release_date, :room_id, :time

  validates :name, :rating, :release_date, :room_id, :time, :presence => true

  has_many :tickets
  belongs_to :room
end
