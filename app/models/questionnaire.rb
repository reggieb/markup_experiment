class Questionnaire < ApplicationRecord
  has_many :questionnaire_questions
  has_many :questions, through: :questionnaire_questions

  serialize :content, Hash
end
