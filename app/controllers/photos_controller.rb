class PhotosController < ApplicationController
	require 'flickraw'
	before_filter 

	def show
		@embed_photo = "Working"
	end
end
