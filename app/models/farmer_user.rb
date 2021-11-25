class FarmerUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

          #Postモデルと関連づける
          has_many :posts, dependent: :destroy
          # Post_commentモデルと関連づける
          has_many :post_comments, dependent: :destroy
end
