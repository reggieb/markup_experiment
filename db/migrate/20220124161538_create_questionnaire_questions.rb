class CreateQuestionnaireQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questionnaire_questions do |t|
      t.belongs_to :questionnaire, null: false, foreign_key: true
      t.belongs_to :question, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
