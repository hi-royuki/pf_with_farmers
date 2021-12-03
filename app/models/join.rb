class Join < ApplicationRecord

  belongs_to :farmer_user, optional: true
  belongs_to :general_user, optional: true
  belongs_to :event, optional: true

   validates :email, presence: true
   validates :people, presence: true
   validates :name, presence: true
   validates :phone, presence: true
end
