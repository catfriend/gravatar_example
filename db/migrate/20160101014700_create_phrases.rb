class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.string :day
      t.text :phrase

      t.timestamps null: false
    end
  end
end
