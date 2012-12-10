class RemoveVoteTypeFromUserVote < ActiveRecord::Migration
  def change
    remove_column :user_votes, :vote_type
  end
end
