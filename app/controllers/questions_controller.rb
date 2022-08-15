class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care", "get dressed and go to work!"]
    @question = params[:question]

    if @question != ""
      # @answer = @answers.select { |answer| answer.start_with?(@question) }

      if @question == "I am going to work"
        @answer = "Great!"
      elsif @question.end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
    # raise # fait planter
  end
end
