class RockgymsController < ApplicationController

	def index
		@rockgyms = Rockgym.all
		@reviews = Review.order("created_at DESC").limit(8)
	end

	def show
		@rockgym = Rockgym.find(params[:id])
		@new_problem = @rockgym.problems.build
	end

end