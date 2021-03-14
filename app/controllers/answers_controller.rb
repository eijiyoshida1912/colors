class AnswersController < ApplicationController
  def index
    @answers = Answer.order("id")
    @questions = QUESTIONS
    @colors = COLORS
  end

  def show
  end

  # 新規作成
  def new
    @questions = QUESTIONS
    @colors = COLORS
    @answer = Answer.new
  end

  def edit
  end

  def create
    @questions = QUESTIONS
    @colors = COLORS
    @answer = Answer.new(params[:answer])
    if @answer.save
      redirect_to action: :index
    else
      render "new"
    end
  end

  def update
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to :results, notice: "削除しました"
  end
end
