class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :style
      t.string :chart_location, default: nil
      t.string :audio_file, default: nil
      t.string :slug
      t.text :notes

      t.timestamps
    end
  end
end
