class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    @coach_answer = question(@answer)
  end

  def question(answer)
    if @answer.match(/\w*\?{1}/)
      return "Silly question, get dressed and go to work!"
    elsif @answer.match(/I am going to work/)
      return "Great"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end
