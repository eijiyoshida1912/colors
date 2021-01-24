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

    # ダミーデータ
    1.upto(103) do |i|
      @answer.send("q#{i}=", @colors.to_a.shuffle[0][0])
    end
  end

  def edit
  end

  def create
    @questions = QUESTIONS
    @colors = COLORS
    @answer = Answer.new(params[:answer])
    if @answer.save
      redirect_to action: :index, notice: "登録しました"
    else
      render "new"
    end
  end

  def update
  end

  def destroy
  end
end
