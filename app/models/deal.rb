class Deal < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  belongs_to :review
  has_many :extras, through: :extra_jointure
end
