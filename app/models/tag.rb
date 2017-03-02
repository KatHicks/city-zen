class Tag < ApplicationRecord
  has_and_belongs_to_many :issues

  validates :name, presence: true, length: {in: 4..20}
end
