class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.text :comment
      t.number :stars

      t.timestamps
    end
  end
end
