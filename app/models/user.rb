class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :is_admin, :last_name, :password_digest
end