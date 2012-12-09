class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_globals
  helper_method :has_voted,:smart_percent, :hot_percent

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

  def smart_percent(user)
    data = Rating.find_or_create_by_user_id(user)
    if data.smart_count > 0 or data.dumb_count > 0
      return ((data.smart_count*100)/(data.smart_count+data.dumb_count))
    else
      return 0
    end
  end

  def hot_percent(user)
    data = Rating.find_or_create_by_user_id(user)
    if data.hot_count > 0 or data.ugly_count > 0
      return ((data.hot_count*100)/(data.hot_count+data.ugly_count))
    else
      return 0
    end
  end

end
