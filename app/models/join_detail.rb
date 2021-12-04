class JoinDetail < ApplicationRecord
  belongs_to :join, optional: true
  belongs_to :event, optional: true

end
