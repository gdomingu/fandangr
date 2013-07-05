require 'spec_helper'

describe User do
  it "is created" do
    user = User.new(:email => "gabe@example.com", :first_name => "Gabe", :last_name => "Dom")
    user.save

    users = User.all
    expect(users).to include(user)

  end
end
