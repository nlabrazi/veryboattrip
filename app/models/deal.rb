class Deal < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  has_many :extras, through: :extra_jointure
end
