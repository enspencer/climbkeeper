class ReviewsController < ApplicationController
before_action :set_review, only: [:show, :edit, :update, :destroy]

	# GET /reviews
	def index
		@reviews = Review.all
	end

	# GET /reviews/:id
	def show
	end

	private

	def set_review
		@review = Review.find(params[:id])
	end

	def review_params
		params[:review]
	end
end