class CreateCuratorOfExhibitions < ActiveRecord::Migration[6.0]
  def change
    create_table :curator_of_exhibitions do |t|
      t.string :name
      t.text :about
      t.string :cover

      t.timestamps
    end
  end
end
