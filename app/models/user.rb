class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :first_name, :is_admin, :last_name, :password, :password_confirmation
  validates :email, :first_name, :last_name, :presence => true
  validates :email, :uniqueness => true
has_many :tickets
end
