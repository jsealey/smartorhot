class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@their_extended_profile ||= ExtendedProfile.find_by_user_id(params[:id])
		@their_extended_profile ||= ExtendedProfile.new
	end
end
