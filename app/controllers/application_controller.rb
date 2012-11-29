class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_globals

  def load_globals
  	@extended_profile ||= ExtendedProfile.find_by_user_id(current_user.id)
 	@extended_profile ||= ExtendedProfile.new
 	@extended_profile.user_id = current_user.id
  end

end
