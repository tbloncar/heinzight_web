class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :street

      t.timestamps
    end

    add_attachment :locations, :logo
    add_attachment :locations, :background_image
  end
end
