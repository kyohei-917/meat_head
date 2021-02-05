class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :question_text, null: false
      t.integer :choice

      t.timestamps
    end
  end
end
