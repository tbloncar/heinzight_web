class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :name
      t.integer :location_id

      t.timestamps
    end

    add_attachment :interests, :image
    add_index :interests, :location_id
  end
end
