class RenameEmailPhoneColumnToJoins < ActiveRecord::Migration[5.2]
  def change
    change_column :joins, :email, :string
    change_column :joins, :phone, :string
  end
end
