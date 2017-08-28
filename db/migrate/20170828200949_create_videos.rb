class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :statement
      t.string :url
      t.string :thumbnail

      t.timestamps
    end
  end
end
