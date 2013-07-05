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

end