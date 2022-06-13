class AddPictureToCharacters < ActiveRecord::Migration[6.1]
  def change
      add_column :characters, :character_picture, :string
  end
end
