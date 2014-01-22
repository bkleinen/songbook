class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first
      t.string :middle
      t.string :last

      t.timestamps
    end
  end
end
