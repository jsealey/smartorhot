class AddTotalPositiveVotesColumnToRating < ActiveRecord::Migration
  def change
    add_column :ratings, :total_positive_votes, :integer
  end
end
