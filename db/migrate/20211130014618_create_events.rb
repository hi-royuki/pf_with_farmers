class CreateEvents < ActiveRecord::Migration[5.2]

  def change
    create_table :events do |t|
      t.integer :farmer_user_id
      t.integer :event_date
      t.string :title
      t.string :event_image_id
      t.text :introduction
      t.integer :price
      t.timestamps
    end
  end
end
