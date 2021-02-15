class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :text,        null: false
      t.integer :choice,   null: false
      t.references :user,  foreign_key: true

      t.timestamps
    end
  end
end
