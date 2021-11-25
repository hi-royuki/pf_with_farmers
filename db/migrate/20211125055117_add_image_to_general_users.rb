class AddImageToGeneralUsers < ActiveRecord::Migration[5.2]

  def change
    add_column :general_users, :profile_image_id, :string
  end
end
