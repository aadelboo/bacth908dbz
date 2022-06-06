class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :planet
      t.integer :power
      t.text :description
      t.boolean :sayan
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
