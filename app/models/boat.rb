class Boat < ApplicationRecord
  has_many :deals
  has_many :reviews
  belongs_to :user
  has_many_attached :photos

  validates :name, uniqueness: true, presence: true
  validates :boat_type, presence: true
  validates :size, presence: true
end
