class ChangeDateEventDateEvents < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :event_date, :text
  end
end
