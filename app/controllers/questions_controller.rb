class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @userinput = params[:question]
    # raise to break program to check parameters!
    # 1. Conditional; which advise?
    if @userinput == "i am going to work"
      # return "Great!" => make variable @answer with value output HTML (@ with answer to make it accessible for view)
      @answer = "Great!"
    elsif @userinput.end_with?("?")
      # return: "Silly question, get dressed and go to work!"
      @answer = "Silly question, get dressed and go to work!"
    else
      # return: "I don't care, get dressed and go to work!"
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
