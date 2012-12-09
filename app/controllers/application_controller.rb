class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_globals
  helper_method :has_voted

  def load_globals
  	if user_signed_in?
  	  @extended_profile ||= ExtendedProfile.find_by_user_id(current_user.id)
   	  @extended_profile ||= ExtendedProfile.new
   	  @extended_profile.user_id = current_user.id
   	end
  end

  def has_voted(candidate_id)
    voted = UserVote.where("candidate_user_id = ? and user_id = ?", candidate_id, current_user.id)
    if voted
      return true
    else
      return false
    end
  end

end
