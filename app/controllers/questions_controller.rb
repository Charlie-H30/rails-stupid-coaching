class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]

    if @answer == "I am going to work"
      @coach_answer = "Great!"
    elsif @answer.chars.last == "?"
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
