class AddMoreColumnsToUserVote < ActiveRecord::Migration
  def change
    add_column :user_votes, :smart_vote, :boolean
    add_column :user_votes, :dumb_vote, :boolean
    add_column :user_votes, :hot_vote, :boolean
    add_column :user_votes, :ugly_vote, :boolean
  end
end
