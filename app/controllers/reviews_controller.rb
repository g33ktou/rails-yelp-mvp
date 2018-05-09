class ReviewsController < ApplicationController
  #before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json


  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  # GET /reviews/1/edit


  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to @review, notice: 'thanks for your time!'
    else
      render :new
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json


  # DELETE /reviews/1
  # DELETE /reviews/1.json


  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_review
    #   @review = Review.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
