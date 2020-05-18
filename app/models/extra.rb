class Extra < ApplicationRecord
  has_many :deals, through: :extra_jointure
end
