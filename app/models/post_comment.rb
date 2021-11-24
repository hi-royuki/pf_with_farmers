class PostComment < ApplicationRecord
  
  belongs_to :farmer_user
  belongs_to :general_user
  belongs_to :post
  
end
