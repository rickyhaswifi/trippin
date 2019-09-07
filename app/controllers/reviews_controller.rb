class ReviewsController < ApplicationController
  before_action :set_trip
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = @trip.reviews
  end

  def show
  end

  def new
    @review = @trip.reviews.new
  end

  def create
    @review = @trip.reviews.new(review_params)
    if @review.save
      redirect_to trip_location_path(@trip, @review)
    else
      render :new
    end
  end

  def edit
    render :new
  end

  def update
    if @review.update(review_params)
      redirect_to trip_review_path(@trip, @review)
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to root_path
  end

  private
  def review_params
    params.require(:review).permit(:user_name, :rating, :title,  :body)
  end


  def set_review
    @review = Review.find(params[:id])
  end

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end
end