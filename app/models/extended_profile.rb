class ExtendedProfile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :date_of_birth, :user_id, :avatar, :first_name, :ispremium, :last_name, :phone_number, :references, :sex, :about
  has_attached_file :avatar, :storage => :dropbox, :dropbox_credentials => "#{Rails.root}/config/dropbox.yml", :styles => { :medium => "300x325#", :thumb => "100x100#" }, :dropbox_options => {:unique_filename => true,:path => proc { |style| "#{style}/#{id}_#{avatar.original_filename}"}}

  validates :first_name, :length => {:in => 0..50}
  validates :last_name, :length => {:in => 0..50}
end