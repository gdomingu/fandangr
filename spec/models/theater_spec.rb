require 'spec_helper'

describe Theater do
  it "is created" do
    theater = Theater.new(:name => "Century 21", :address => "123 Main St.", :num_of_rooms => 4)
    theater.save

    theaters = Theater.all
    expect(theaters).to include(theater)
  end
  it "tries to create one without a name" do
    theater = Theater.new(:address => "123 Main", :num_of_rooms => "4")
    expect(theater.valid?).to be_false
  end
  it "tries to create one without an address" do
    theater = Theater.new(:name => "Century 12", :num_of_rooms => "4")
    expect(theater.valid?).to be_false
  end
  it "tries to create one without number of rooms" do
    theater = Theater.new(:name => "Century 12", :address => "123 Main")
    expect(theater.valid?).to be_false
  end
 # feel like I should add a test to test relationships but not sure how to do that. experimenting with shoulda-gem
  it { should have_many(:rooms)}
  end
end
