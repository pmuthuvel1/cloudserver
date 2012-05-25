class User < ActiveRecord::Base
  attr_accessible :pass_word, :username, :usertype
end
