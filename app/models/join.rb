class Join < ApplicationRecord

  belongs_to :farmer_user, optional: true
  belongs_to :general_user, optional: true
  belongs_to :event, optional: true
  has_many :join_details, dependent: :destroy

   validates :email, :people, :name, presence: true
end
