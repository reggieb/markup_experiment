class Question < ApplicationRecord
  has_many :questionnaire_questions
  has_many :questionnaires, through: :questionnaire_questions

  has_many :question_answers
  has_many :answers, through: :question_answers
end
