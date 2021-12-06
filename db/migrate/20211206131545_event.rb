class Event < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :response_status, :integer, default: 0
  end
end
