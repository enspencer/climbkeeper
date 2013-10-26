class RockgymsController < ApplicationController

	def index
			@rockgyms = Rockgym.all
			@reviews = Review.order("created_at DESC").limit(8)
	end

	def show
		if Rockgym.all != []
			@rockgym = Rockgym.find(params[:id])
			@problem = Problem.new
			# @problems = @rockgym.problems.order("created_at DESC")
		else
		end
	end

	def new
		
	end

end