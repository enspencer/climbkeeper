class RockgymsController < ApplicationController

	def index
		@rockgyms = Rockgym.all
	end

end