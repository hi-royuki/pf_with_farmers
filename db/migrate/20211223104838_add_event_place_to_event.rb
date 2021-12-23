class AddEventPlaceToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :event_place, :text
  end
end
