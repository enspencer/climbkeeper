class ProblemsController < ApplicationController

before_action :set_problem, only: [:show, :edit, :update, :destroy]

	# GET /problems
	def index
		@problems = Problem.all
	end

	# GET /problems/:id
	def show
	end

	private

	def set_problem
		@problem = Problem.find(params[:id])
	end

	def problem_params
		params[:problem]
	end
end