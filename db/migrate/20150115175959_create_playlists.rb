class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :description
      t.float :latitute
      t.float :longitude
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :playlists, :users
  end
end
