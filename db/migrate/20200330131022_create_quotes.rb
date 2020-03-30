class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :text, null: false
      t.string :author, null: false
      t.string :cipher, null: false
      t.integer :difficulty, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
