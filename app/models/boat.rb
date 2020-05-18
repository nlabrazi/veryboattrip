class Boat < ApplicationRecord
  has_many :deals

  validates :name, uniqueness: true, presence: true
  validates :type, presence: true
  validates :size, presence: true
end
