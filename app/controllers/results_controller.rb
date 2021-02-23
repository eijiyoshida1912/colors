class ResultsController < ApplicationController
  def index
    @answers = Answer.order("id")
    @questions = QUESTIONS
    @colors = COLORS

    # 問に対して黒と答えた人の数
    @answerblack = []
    @answerwhite = []
    @answerred = []
    @answerorange = []
    @answeryellow = []
    @answergreen = []
    @answerblue = []
    @answerpurple = []
    @answerbrown = []
    @answergray = []
    @answerpink = []


    1.upto(103) do |i|
      @answerblack.push(Answer.where("q#{i}": "black").count)
      @answerwhite.push(Answer.where("q#{i}": "white").count)
      @answerred.push(Answer.where("q#{i}": "red").count)
      @answerorange.push(Answer.where("q#{i}": "orange").count)
      @answeryellow.push(Answer.where("q#{i}": "yellow").count)
      @answergreen.push(Answer.where("q#{i}": "green").count)
      @answerblue.push(Answer.where("q#{i}": "blue").count)
      @answerpurple.push(Answer.where("q#{i}": "purple").count)
      @answerbrown.push(Answer.where("q#{i}": "brown").count)
      @answergray.push(Answer.where("q#{i}": "gray").count)
      @answerpink.push(Answer.where("q#{i}": "pink").count)
    end


    
    @answerq1black = Answer.where(q1: "black").count
    @answerq1white = Answer.where(q1: "white").count
    @answerq1red = Answer.where(q1: "red").count
    @answerq1orange = Answer.where(q1: "orange").count
    @answerq1yellow = Answer.where(q1: "yellow").count
    @answerq1green = Answer.where(q1: "green").count
    @answerq1blue = Answer.where(q1: "blue").count
    @answerq1purple = Answer.where(q1: "purple").count
    @answerq1brown = Answer.where(q1: "brown").count
    @answerq1gray = Answer.where(q1: "gray").count
    @answerq1pink = Answer.where(q1: "pink").count


    
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
