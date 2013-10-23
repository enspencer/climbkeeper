class RockgymsController < ApplicationController

	def index
		@rockgyms = Rockgym.all
		@reviews = Review.order("created_at DESC").limit(5)
	end

	def show
		@rockgym = Rockgym.find(params[:id])
	end

end