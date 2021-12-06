class JoinDetail < ApplicationRecord
  belongs_to :join, optional: true
  belongs_to :event, optional: true
  # enum response_status: { outstanding: 0, in_progress: 1, closed: 2 }
end
