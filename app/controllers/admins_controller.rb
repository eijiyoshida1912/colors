class AdminsController < ApplicationController
  def index
    @answers = Answer.order("id")
    @questions = QUESTIONS
    @colors = COLORS
  end

  def show
    render plain: "show"
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
