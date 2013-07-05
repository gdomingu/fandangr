class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :is_admin, :last_name, :password, :password_confirmation
  validates :email, :first_name, :last_name, :presence => true

end
