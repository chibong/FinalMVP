class FeedbacksController < ApplicationController

  def index
    @feedbacks = Feedback.all
  end

  def show
    @feedback = Feedback.find_by_id(params[:id])
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new
    @feedback.user_id = params[:user_id]
    @feedback.comment = params[:comment]

    if @feedback.save
      redirect_to questions_url, notice: "Comments recorded"
    else
      render 'new'
    end
  end

  def edit
    @feedback = Feedback.find_by_id(params[:id])
  end

  def update
    @feedback = Feedback.find_by_id(params[:id])
    @feedback.user_id = params[:user_id]
    @feedback.comment = params[:comment]

    if @feedback.save
      redirect_to feedbacks_url
    else
      render 'new'
    end
  end

  def destroy
    @feedback = Feedback.find_by_id(params[:id])
    @feedback.destroy
    redirect_to feedbacks_url
  end
end
