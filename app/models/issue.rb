class Issue < ApplicationRecord
  enum status: {open: 0, pending: 1, resolved: 2}

  validates :title, presence: true, length: {in: 4..20}
  validates :description, presence: true, length: {in: 10..500}
end
