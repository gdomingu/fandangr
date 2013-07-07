class Screening < ActiveRecord::Base
  attr_accessible :name, :rating, :genre, :room_id, :time

  validates :name, :rating, :genre, :room_id, :time, :presence => true

  has_many :tickets
  belongs_to :room
end
