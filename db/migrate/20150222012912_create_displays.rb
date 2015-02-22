class CreateDisplays < ActiveRecord::Migration
  def change
    create_table :displays do |t|
      t.string :name
      t.text :child_content
      t.text :adult_content
      t.string :beacon_uuid
      t.integer :beacon_major_num
      t.integer :beacon_minor_num
      t.integer :location_id
      t.integer :exhibit_id

      t.timestamps
    end

    add_attachment :displays, :image
    add_index :displays, :beacon_major_num
    add_index :displays, :beacon_minor_num
    add_index :displays, :location_id
    add_index :displays, :exhibit_id
  end
end
