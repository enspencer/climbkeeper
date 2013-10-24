class ReviewsController < ApplicationController
before_action :set_review, only: [:show, :edit, :update, :destroy]

	# GET /reviews
	def index
		@reviews = review.all
	end

	# GET /reviews/:id
	def show
	end

	private

	def set_review
		@review = review.find(params[:id])
	end

	def review_params
		params[:review]
	end
end