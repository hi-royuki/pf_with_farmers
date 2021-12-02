class CreateJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :joins do |t|
      t.integer :farmer_user_id
      t.integer :general_user_id
      t.integer :event_id
      t.integer :email
      t.integer :phone
      t.integer :people
      t.string :name
      t.text :memo
      t.timestamps
    end
  end
end
