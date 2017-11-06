class QuestionsController < ApplicationController

  Answer = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

  def ask
  end

  def answer
    @question_type = params[:question_type]
    if @question_type == "I am going to work"
      @answer = Answer[0]
    elsif @question_type.include? "?"
      @answer = Answer[1]
    else
      @answer = Answer[2]
    end
  end
end
