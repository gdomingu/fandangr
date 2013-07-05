require 'spec_helper'

describe Screening do
  it "is created" do
    screening = Screening.new(:name => "Jurrasic Park", :rating => "PG-13", :release_date => "July 1st, 2013", :time => 1300, :room_id => 1)
    screening.save

    screenings = Screening.all
    expect(screenings).to include(screening)
   end

   it "tries to create one without all params" do
   screening = Screening.new
   expect(screening.valid?).to be_false
   end

   it "should have many tickets" do
    should have_many(:tickets)
  end

   it "should belong to a room" do
    should belong_to(:room)
  end
end
