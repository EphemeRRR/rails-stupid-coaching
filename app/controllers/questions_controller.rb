class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = ""
    @question = params[:question]
    if @question == "I am going to work"
      @answer = "great"
    elsif @question == "Is Christian so good in html and css?"
      @answer = "Yes of course, no doubt about it!!"
    elsif /.*(\?)$/.match(@question)
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end

  end

end
