class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :location
      t.string :title
      t.string :date
      t.string :description
      t.string :image_url
      t.integer :price
      t.timestamps
    end
  end
end
