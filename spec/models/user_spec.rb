require 'spec_helper'

describe User do
  it "is created" do
    user = User.new(:email => "gabe@example.com", :first_name => "Gabe", :last_name => "Dom")
    user.save

    users = User.all
    expect(users).to include(user)
  end

  it "tries to be created without email, and names" do
    user = User.new
    expect(user.valid?).to be_false
  end

  it "should have a ticket" do
    should have_many(:tickets)
  end

end
