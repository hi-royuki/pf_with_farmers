class AddIsActiveToFarmerUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :farmer_users, :is_active, :boolean, default: true, null: false
  end
end
