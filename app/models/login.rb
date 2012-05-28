class Login < ActiveRecord::Base
  attr_accessible :email, :name, :pass_word, :phone, :username, :usertype
  has_many :server_instances
  #validates :email,:name ,:pass_word, :phone, :username ,:usertype
  validates_length_of :name, :within => 6..20, :too_long => "pick a shorter name", :too_short => "pick a longer name"
  validates_length_of :username, :within => 6..15, :too_long => "pick a shorter username", :too_short => "pick a longer username"
  validates_length_of :pass_word, :within => 6..15, :too_long => "pick a shorter password", :too_short => "pick a longer password"

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }


 
end
