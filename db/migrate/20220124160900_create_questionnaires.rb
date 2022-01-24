class CreateQuestionnaires < ActiveRecord::Migration[6.0]
  def change
    create_table :questionnaires do |t|
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
