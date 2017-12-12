class ReviewsController < ApplicationController

  def index
    @destination = Destination.find(params[:id])
    @reviews = @destination.review.all
    json_response(@reviews)
  end

  def show
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def create
    @destination = Destination.find(params[:destination_id])
    @review = @destination.reviews.create(review_params)
    json_response(@review)
    redirect_to destination_path(@review.destination)
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
  end

  def destroy
    @destination = Destination.find(params[:destination_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to destination_path(@destination)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def review_params
    params.permit(:content_body, :rating, :author)
  end
end
