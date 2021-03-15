class ResultsController < ApplicationController
#  before_action :login_required
  
  def index
    @answers = Answer.order("id")
    @questions = QUESTIONS
    @colors = COLORS

    # 問に対してそれぞれの色を答えた人の数。
    @colors.each do |color_k, color_v|
      # ハッシュのインスタンス変数を生成
      instance_variable_set("@answer#{color_k}", {})
      # 回答数をユーザーの数で割ってパーセントを出す
      @questions.each_with_index do |q, i|
        instance_variable_get("@answer#{color_k}")["#{q}"] = (((Answer.where("q#{i+1}": "#{color_k}").count).to_f / @answers.count) * 100).round(0)
      end
      # 回答数が0の物は削除して、多い順番に並べ直す
      instance_variable_set("@answer#{color_k}", instance_variable_get("@answer#{color_k}").delete_if{|k, v| v == 0}.sort_by{|_, v| -v})
    end
  end

end
