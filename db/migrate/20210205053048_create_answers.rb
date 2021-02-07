class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.integer :choice
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
