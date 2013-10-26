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

	def edit
	end
	
	def create
		@review = Review.new(review_params)
	 	@problem = Problem.find(params[:problem_id])
	 	@climber = current_climber

	    respond_to do |format|
			if @review.save
				@problem.reviews << @review
				@climber.reviews << @review

				format.html { redirect_to @problem, notice: 'Review created!' }
				format.json { render action: 'show', status: :created, location: @review }
			else
				format.html { render action: 'new' }
				format.json { render json: @review.errors, status: :unprocessable_entity }
			end
	    end
	end

	def update
		@problem = @review.problem
		@climber = @review.climber

		respond_to do |format|
			if @review.update(review_params)
				format.html { redirect_to @problem, notice: 'Review update!'}
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
	end

	def destroy
		@review.destroy
		respond_to do |format|
      format.html { redirect_to @review.problem }
      format.json { head :no_content }
    end
  end

	private

	def set_review
		@review = Review.find(params[:id])
	end

	def review_params
		params.require(:review).permit(:body, :rating, :rating_string)
	end
end