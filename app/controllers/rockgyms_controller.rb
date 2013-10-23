class RockgymsController < ActionController::Base

	def index
		@rockgyms = Rockgym.all
	end

end