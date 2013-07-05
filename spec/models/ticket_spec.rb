require 'spec_helper'

describe Ticket do
  it "is created" do
    ticket = Ticket.new(:price => 12.99, :screening_id => 1, :seat_num => 34, :user_id => 1)
  end

end