class User < ActiveRecord::Base
  attr_accessible :pass_word, :username, :usertype
  has_many :server_instances
end
