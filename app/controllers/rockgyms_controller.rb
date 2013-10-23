class RockgymsController < ApplicationController

	def index
		@rockgyms = Rockgym.all
	end

	def show
		@rockgym = Rockgym.find(params[:id])
	end

end