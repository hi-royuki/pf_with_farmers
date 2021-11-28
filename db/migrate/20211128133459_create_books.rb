class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :title
      t.integer :farmer_user_id
      t.integer :general_user_id
      t.string :image_id
      t.text :introduction

      t.timestamps
    end
  end
end
