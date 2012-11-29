class ExtendedProfile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :date_of_birth, :user_id, :avatar, :first_name, :ispremium, :last_name, :phone_number, :references, :sex
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates :first_name, :length => {:in => 0..50}
  validates :last_name, :length => {:in => 0..50}
end