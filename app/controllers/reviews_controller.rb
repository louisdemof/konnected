class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @solicitation = Solicitation.find(params[:solicitation_id])
  end

  def create
    @review = Review.new(review_params)
      @solicitation = Solicitation.find(params[:solicitation_id])
    @review.solicitation = @solicitation
    if @review.save
      redirect_to reviews_path, notice: "Congrats, you submitted a review!"
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path
  end

  private

  def review_params
    params.require(:review).permit(:solicitation_id, :score, :comment)
  end
end
