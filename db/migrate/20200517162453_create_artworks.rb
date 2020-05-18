class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :name
      t.text :about
      t.string :cover

      t.timestamps
    end
  end
end
