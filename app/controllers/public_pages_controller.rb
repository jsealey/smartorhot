class PublicPagesController < ApplicationController
	before_filter :authenticate_user!, :only => :token
	def home
	end
end
