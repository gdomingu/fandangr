require 'spec_helper'

describe Ticket do
  it "is created" do
    ticket = Ticket.new(:price => 12.99, :screening_id => 1, :seat_num => 34, :user_id => 1)
    ticket.save

    tickets = Ticket.all
    expect(tickets).to include(ticket)
  end

  it "tries to create one without price, screening id, and seat" do
    ticket = Ticket.new
    expect(ticket.valid?).to be_false
  end
  it "tries to create a ticket for a seat that doesn't exist" do
    room = Room.new(:room_number => '3', :num_of_seats => '45', :screen => 'i-max', :theater_id => '1')
    room.save
    ticket = Ticket.new(:price => 12.99, :screening_id => 1, :seat_num => 444, :user_id => 1)
    expect(ticket.seat_num <= room.num_of_seats).to be_false
    #be sure to add some logic to the controller to only allow the seat ticket to be bought if it is valid.
  end


  it "should belong to screening" do
    should belong_to(:screening)
  end

  it "should belong to a user " do
    should belong_to(:user)
  end

end