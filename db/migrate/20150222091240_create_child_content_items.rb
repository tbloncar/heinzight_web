class CreateChildContentItems < ActiveRecord::Migration
  def change
    create_table :child_content_items do |t|
      t.string :title
      t.text :content
      t.integer :display_id

      t.timestamps
    end
  end
end
