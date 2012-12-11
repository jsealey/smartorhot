class AddAboutToExtendedProfiles < ActiveRecord::Migration
  def change
    add_column :extended_profiles, :about, :text
  end
end
