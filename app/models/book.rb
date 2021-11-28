# class Book < ApplicationRecord
  
#   # farmeruserモデルを関連づける
#   belongs_to :farmer_user

#   belongs_to :general_user
#   # 画像
#   attachment :image
#   # Post_commentモデルと関連づける
#   # has_many :post_comments, dependent: :destroy
#   has_many :comments, dependent: :destroy

#   # バリデーションの設定
#   validates :image, presence: true
#   validates :title, presence: true
#   validates :introduction, presence: true
# end
