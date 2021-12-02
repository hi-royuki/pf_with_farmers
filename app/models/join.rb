class Join < ApplicationRecord

  belongs_to :farmer_user
  belongs_to :general_user
  belongs_to :event

   validates :email, presence: true
   validates :people, presence: true
   validates :name, presence: true
   validates :price, presence: true
end
