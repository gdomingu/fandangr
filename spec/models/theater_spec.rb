require 'spec_helper'

describe Theater do
  it "is created" do
    theater = Theater.new(:name => "Century 21", :address => "123 Main St.", :num_of_rooms => 4)
    theater.save

    theaters = Theater.all
    expect(theaters).to include(theater)
  end
end