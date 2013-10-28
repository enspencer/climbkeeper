class ProblemsController < ApplicationController

before_action :set_problem, only: [:show, :edit, :update, :destroy]
 
	# GET /problems
	def index
		@problems = Problem.all
	end

	# GET /problems/:id
	def show
		@review = Review.new
		@word_array = [
			{text: "dino", weight: 7},
			{text: "pinchy", weight: 3},
			{text: "big holds", weight: 15},
			{text: "crux", weight: 2},
			{text: "BOMB!", weight: 12},
			{text: "tall", weight: 4},
		]
	end

	def new
		@problem = Problem.new
		@rockgym = Rockgym.find(params[:rockgym_id])
	end

	def edit
	end

	def create
		@problem = Problem.new(problem_params)
	 	@rockgym = Rockgym.find(params[:rockgym_id])
	 	@climber = current_climber

	    respond_to do |format|
				if @problem.save
					@rockgym.problems << @problem
					@climber.problems << @problem

					format.html { redirect_to @rockgym, notice: 'Problem created!' }
					format.json { render action: 'show', status: :created, location: @problem }
				else
					format.html { render action: 'new' }
					format.json { render json: @problem.errors, status: :unprocessable_entity }
				end
	    end
	end

	def update
		@rockgym = Rockgym.find(params[:rockgym_id])
		respond_to do |format|
			if @problem.update(problem_params)
				format.html { redirect_to @rockgym, notice: 'Problem was updated.'}
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
        format.json { render json: @problem.errors, status: :unprocessable_entity }
      end
    end
	end

	def destroy
		@problem.destroy
		respond_to do |format|
      format.html { redirect_to @problem.rockgym }
      format.json { head :no_content }
    end
  end

	private

	def set_problem
		@problem = Problem.find(params[:id])
		@rockgym = @problem.rockgym
	end

	def problem_params
		params.require(:problem).permit(:name, :style, :color, :rating, :avatar)
	end
end