class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    @coachanswer = ""
    if params[:question] == 'I am going to work'
      return @coachanswer = 'Great!'
    elsif params[:question].end_with?('?')
      return @coachanswer = 'Silly question, get dressed and go to work!'
    else
      return @coachanswer = "I don't care, get dressed and go to work!"
    end
  end
end
