class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @query = params[:query]
    if @query.downcase.capitalize == "I am going to work right now!"
    elsif @query[-1] == "?"
      coach_answer_enhanced
      @answer = "#{@enhanced_response}Silly question, get dressed and go to work!"
    else
      coach_answer_enhanced
      @answer = "#{@enhanced_response}I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced
    if @query == @query.upcase
      @enhanced_response = "I can feel your motivation! "
    end
  end
end
