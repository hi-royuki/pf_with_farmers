class Post < ApplicationRecord
  # farmeruserモデルを関連づける
  belongs_to :farmer_user
  attachment :image

  # バリデーションの設定
  validates :image, presence: true
  validates :title, presence: true
  validates :introduction, presence: true

end
