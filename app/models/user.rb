class User < ActiveRecord::Base
  has_private_messages
  has_one :extended_profile, :dependent => :destroy
  has_one :attractiveness, :dependent => :destroy
  has_many :user_votes, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

end
