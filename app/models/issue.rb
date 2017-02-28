class Issue < ApplicationRecord
  enum status: [:open, :pending, :resolved]
end
