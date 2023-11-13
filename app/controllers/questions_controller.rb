class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = params[:question]
    if params[:question].downcase == 'I am going to work'.downcase
      @coach_answers = 'Great!'
    elsif params[:question].include? '?'
      @coach_answers = 'Silly question, get dressed and go to work!'
    else
      @coach_answers = "I don't care, get dressed and go to work!"
    end
  end
end
