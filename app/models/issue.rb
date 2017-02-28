class Issue < ApplicationRecord
  enum status: {open: 0, pending: 1, resolved: 2}
end
