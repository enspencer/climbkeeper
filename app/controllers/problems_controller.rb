class ProblemsController < ApplicationController

before_action :set_problem, only: [:show, :edit, :update, :destroy]

	# GET /problems
	def index
		@problems = Problem.all
	end

	# GET /problems/:id
	def show

	end

	def new
		@problem = Problem.new
		@rockgym = Rockgym.find(params[:rockgym_id])
	end

	def create
		@problem = Problem.new(problem_params)
	 	@rockgym = Rockgym.find(params[:rockgym_id])

	    respond_to do |format|
			if @problem.save
				@rockgym.problems << @problem

				format.html { redirect_to @rockgym, notice: 'problem was successfully created.' }
				format.json { render action: 'show', status: :created, location: @problem }
			else
				format.html { render action: 'new' }
				format.json { render json: @problem.errors, status: :unprocessable_entity }
			end
	    end
	end


	private

	def set_problem
		@problem = Problem.find(params[:id])
		@rockgym = @problem.rockgym
	end

	def problem_params
		params.require(:problem).permit(:name, :style, :color, :rating)
	end
end