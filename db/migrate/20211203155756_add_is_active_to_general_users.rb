class AddIsActiveToGeneralUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :general_users, :is_active, :boolean, default: true, null: false
  end
end
