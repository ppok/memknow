class ScheduledReviewsController < ApplicationController
  def index
    @scheduled_reviews = current_user.scheduled_reviews
  end

  def show
    @scheduled_review = current_user.scheduled_reviews.find(params[:id])

    if @scheduled_review.flashcards
      @reviews = @scheduled_review.flashcards
    else
      redirect_to scheduled_reviews_path
    end
  end
end
