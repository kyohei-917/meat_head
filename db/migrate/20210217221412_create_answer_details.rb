class CreateAnswerDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_details do |t|
      t.integer :choice,        null: false
      t.references :answer,     foreign_key: true
      t.references :question,   foreign_key: true

      t.timestamps
    end
  end
end
