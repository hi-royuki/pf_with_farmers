class Event < ApplicationRecord
  # farmeruserモデルを関連づける
   belongs_to :farmer_user

   has_many :joins, dependent: :destroy
   has_many :join_details, dependent: :destroy


   # 画像
   attachment :event_image

   validates :event_image, presence: true
   validates :title, presence: true
   validates :introduction, presence: true
   validates :price, presence: true
   validates :event_date, presence: true

   def self.search(keyword)
    where(["title like? OR introduction like?", "%#{keyword}%", "%#{keyword}%"])
   end

 enum response_status: { outstanding: 0, in_progress: 1, closed: 2 }
end
