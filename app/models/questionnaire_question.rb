class QuestionnaireQuestion < ApplicationRecord
  belongs_to :questionnaire
  belongs_to :question

  acts_as_list scope: :questionnaire
end
