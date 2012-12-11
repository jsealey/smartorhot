class PublicPagesController < ApplicationController
	before_filter :authenticate_user!, :only => :token
	before_filter :load_image

	def home
		if user_signed_in?
			@extended_profiles = ExtendedProfile.page(params[:page]).per(6)
		else
			ratings = Rating.where("total_positive_votes IS NOT NULL").order("total_positive_votes DESC").select("user_id").limit(6).to_a
			@extended_profiles = []
				ratings.each do |a|
			@extended_profiles << ExtendedProfile.find_or_create_by_user_id(a.user_id)
		end
		end
	end

	def load_image		
		FlickRaw.api_key="922628a4b5fb139188eae7710e9215ee"
		FlickRaw.shared_secret="4a2e8f2cf3e78ca7"

		# url=params[:url]
		# info = flickr.photos.getInfo(:photo_id =>url.split("/").last)
		# list   = flickr.photos.getRecent
		info   = flickr.photos.getInfo(:photo_id =>"3839885270")
		@embed_photo={}
		@embed_photo["flickr"]=FlickRaw.url(info) rescue FlickRaw.url_o(info) rescue FlickRaw.url_b(info)
		@title = info.title
		@square_url = FlickRaw.url_s(info)
		@taken = info.dates.taken
		@views = info.views
		@tags = info.tags.map {|t| t.raw}
	end

	def top
		ratings = Rating.where("total_positive_votes IS NOT NULL").order("total_positive_votes DESC").select("user_id").limit(10).to_a
		#@extended_profiles = ExtendedProfile.find_all_by_user_id(ratings.map {|i| i.user_id })

		@extended_profiles = []
		ratings.each do |a|
			@extended_profiles << ExtendedProfile.find_or_create_by_user_id(a.user_id)
		end

	end
end
