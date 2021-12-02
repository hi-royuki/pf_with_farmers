class Event < ApplicationRecord
  # farmeruserモデルを関連づける
   belongs_to :farmer_user

   has_many :joins, dependent: :destroy


   # 画像
   attachment :event_image

   validates :event_image, presence: true
   validates :title, presence: true
   validates :introduction, presence: true
   validates :price, presence: true
   validates :event_date, presence: true


end
