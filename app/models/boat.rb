class Boat < ApplicationRecord
  has_many :deals
  has_many :reviews

  validates :name, uniqueness: true, presence: true
  validates :type, presence: true
  validates :size, presence: true
end
