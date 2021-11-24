class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      t.integer :farmer_user_id
      t.text :title
      t.string :image_id
      t.text :introduction

      t.timestamps
    end
  end
end
