class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :style
      t.string :chart, default: nil
      t.string :audio, default: nil
      t.string :slug
      t.text :notes

      t.timestamps
    end
  end
end
