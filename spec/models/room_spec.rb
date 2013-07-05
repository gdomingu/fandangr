require 'spec_helper'

describe Room do
  it "is created" do
    room = Room.new(:room_number => '3', :num_of_seats => '45', :screen => 'i-max', :theater_id => '1')
    room.save
    rooms = Room.all
    expect(rooms). to include(room)
  end

  it "tries to create one without all params" do
    room = Room.new
    expect(room.valid?).to be_false
  end

end
