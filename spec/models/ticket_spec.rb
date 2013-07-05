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
    screening = Screening.new(:name => "Jurrasic Park", :rating => "PG-13", :release_date => "July 1st, 2013", :time => 1300, :room_id => 1)
    ticket = Ticket.new(:price => 12.99, :screening_id => 1, :seat_num => 444, :user_id => 1)
    ticket.seat_num > screening.room.num_of_seats
    expect(ticket.valid?).to be_false
  end


  it "should belong to screening" do
    should belong_to(:screening)
  end

  it "should belong to a user " do
    should belong_to(:user)
  end

end