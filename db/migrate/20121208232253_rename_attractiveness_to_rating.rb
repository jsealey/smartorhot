class RenameAttractivenessToRating < ActiveRecord::Migration
  def change
    rename_table(:attractivenesses, :ratings)
  end
end
