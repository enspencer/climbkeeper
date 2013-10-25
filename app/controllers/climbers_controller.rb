class ClimbersController < ApplicationController
	before_action :set_climber, only: [:show]

	# GET /climbers
	def index
		@climbers = Climber.all
	end

	# GET /climbers/:id
	def show
	end

	private

	def set_climber
		@climber = Climber.find(params[:id])
	end

	# def climber_params
	# 	params.require(:climber).permit(:username, :skill)
	# end

end