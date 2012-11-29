class CreateUserVotes < ActiveRecord::Migration
  def change
    create_table :user_votes do |t|
      t.references :user
      t.integer :candidate_user_id
      t.integer :vote_type

      t.timestamps
    end
  end
end
