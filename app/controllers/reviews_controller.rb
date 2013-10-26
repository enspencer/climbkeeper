class ReviewsController < ApplicationController
before_action :set_review, only: [:show, :edit, :update, :destroy]

	# GET /reviews
	def index
		@reviews = Review.all
	end

	# GET /reviews/:id
	def show
	end

	# GET /reviews/new
	def new
		@review = Review.new
		@problem = Problem.find(params[:problem_id])
	end

	def create
		@review = Review.new(review_params)
	 	@problem = Problem.find(params[:problem_id])
	 	@climber = current_climber

	    respond_to do |format|
			if @review.save
				@problem.reviews << @review

				format.html { redirect_to @problem, notice: 'Review created!' }
				format.json { render action: 'show', status: :created, location: @review }
			else
				format.html { render action: 'new' }
				format.json { render json: @review.errors, status: :unprocessable_entity }
			end
	    end
	end

	private

	def set_review
		@review = Review.find(params[:id])
	end

	def review_params
		params.require(:review).permit(:body)
	end
end