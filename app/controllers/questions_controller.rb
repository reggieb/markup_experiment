class QuestionsController < ApplicationController
  def show
    question
  end

  def update
    if question == questionnaire.questions.last
      redirect_to root_path
    else
      index = questionnaire.questions.index(question)
      redirect_to [questionnaire, questionnaire.questions[index + 1]]
    end
  end

  private

  def question
    @question ||= questionnaire.questions.find(params[:id])
  end

  def questionnaire
    @questionnaire ||= Questionnaire.find(params[:questionnaire_id])
  end
end
