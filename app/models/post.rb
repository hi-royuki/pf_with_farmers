class Post < ApplicationRecord
  # farmeruserモデルを関連づける
  belongs_to :farmer_user
  attachment :image
end
