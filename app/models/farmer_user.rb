class FarmerUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

          #Postモデルと関連づける
          has_many :posts, dependent: :destroy
          # eventモデルと関連づける
          has_many :events, dependent: :destroy

          # Post_commentモデルと関連づける
          has_many :post_comments, dependent: :destroy

          has_many :joins, dependent: :destroy


          # refileを使って、画像投稿ができるようにする
           attachment :profile_image
end
