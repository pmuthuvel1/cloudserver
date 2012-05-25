class Login < ActiveRecord::Base
  attr_accessible :email, :name, :pass_word, :phone, :username, :usertype
end
