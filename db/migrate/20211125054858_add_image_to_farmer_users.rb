class AddImageToFarmerUsers < ActiveRecord::Migration[5.2]

  def change
    add_column :farmer_users, :profile_image_id, :string
  end

end
