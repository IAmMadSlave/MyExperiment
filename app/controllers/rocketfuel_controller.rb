class RocketfuelController < ApplicationController
	before_action :signed_in_user
	
	def index
		@form_type = params[:form_type].to_i
	end
	
	def create
		@all_params = params[:rocketfuel]
	end
	def new

	end
end
