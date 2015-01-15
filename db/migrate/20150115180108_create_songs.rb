class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.references :playlist, index: true
      t.string :title
      t.text :metadata
      t.string :url

      t.timestamps null: false
    end
    add_foreign_key :songs, :playlists
  end
end
