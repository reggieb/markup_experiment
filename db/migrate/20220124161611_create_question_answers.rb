class CreateQuestionAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :question_answers do |t|
      t.belongs_to :answer, null: false, foreign_key: true
      t.belongs_to :question, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
