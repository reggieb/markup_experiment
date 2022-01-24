class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :name
      t.string :content
      t.boolean :multiple_choice

      t.timestamps
    end
  end
end
