class CreateJoinDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :join_details do |t|
      t.integer :join_id
      t.integer :event_id
      t.integer :join_status

      t.timestamps
    end
  end
end
