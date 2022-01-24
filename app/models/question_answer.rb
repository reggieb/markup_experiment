class QuestionAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :question

  acts_as_list scope: :question
end
