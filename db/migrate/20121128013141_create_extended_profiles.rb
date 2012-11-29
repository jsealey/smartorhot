class CreateExtendedProfiles < ActiveRecord::Migration
  def change
    create_table :extended_profiles do |t|
      t.references :user
      t.string :first_name, :limit => 50
      t.string :last_name, :limit => 50
      t.string :phone_number
      t.boolean :ispremium, :default => false
      t.date :date_of_birth
      t.boolean :sex

      t.timestamps
    end
  end
end
