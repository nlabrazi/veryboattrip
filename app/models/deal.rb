class Deal < ApplicationRecord
  has_many :extras
  belongs_to :user
  belongs_to :boat
  belongs_to :review
end
