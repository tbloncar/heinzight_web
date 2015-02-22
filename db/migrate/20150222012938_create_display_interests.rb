class CreateDisplayInterests < ActiveRecord::Migration
  def change
    create_table :display_interests do |t|
      t.integer :display_id
      t.integer :interest_id

      t.timestamps
    end

    add_index :display_interests, :display_id
    add_index :display_interests, :interest_id
  end
end
