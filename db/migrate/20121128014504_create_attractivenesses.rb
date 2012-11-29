class CreateAttractivenesses < ActiveRecord::Migration
  def change
    create_table :attractivenesses do |t|
      t.references :user
      t.integer :smart_count, :default => 0
      t.integer :hot_count, :default => 0
      t.integer :dumb_count, :default => 0
      t.integer :ugly_count, :default => 0

      t.timestamps
    end
  end
end
