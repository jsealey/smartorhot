class UserVote < ActiveRecord::Base
  belongs_to :user
  attr_accessible :candidate_user_id, :references, :smart_vote, 
                  :dumb_vote, :hot_vote, :ugly_vote
end
