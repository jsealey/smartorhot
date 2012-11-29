class UserVote < ActiveRecord::Base
  belongs_to :user
  attr_accessible :candidate_user_id, :references, :vote_type
end
