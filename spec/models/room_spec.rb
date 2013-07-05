require 'spec_helper'

describe Room do
  it "is created" do
    room = Room.new(:room_number => '3', :num_of_seats => '45', :type => 'i-max', :theater_id => '1')
  end
end
