class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :text
      t.string :author
      t.string :cipher
      t.integer :difficulty
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
