class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.string :name
      t.integer :location_id

      t.timestamps
    end

    add_attachment :exhibits, :image
    add_index :exhibits, :location_id
  end
end
