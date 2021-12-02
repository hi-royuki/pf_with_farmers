class Join < ApplicationRecord

  belongs_to :farmer_user
  belongs_to :general_user
  belongs_to :event

  # validates :event_image, presence: true
  # validates :title, presence: true
  # validates :introduction, presence: true
  # validates :price, presence: true
  # validates :event_date, presence: true
end
