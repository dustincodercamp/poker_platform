class CreateContentItems < ActiveRecord::Migration[5.0]
  def change
    create_table :content_items do |t|
      t.text :statement
      t.string :image
      t.references :content
      t.boolean :clickable
      t.integer :order

      t.timestamps
    end
  end
end
