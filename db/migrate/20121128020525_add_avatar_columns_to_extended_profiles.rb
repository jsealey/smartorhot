class AddAvatarColumnsToExtendedProfiles < ActiveRecord::Migration
  def self.up
    add_attachment :extended_profiles, :avatar
  end

  def self.down
    remove_attachment :extended_profiles, :avatar
  end
end
