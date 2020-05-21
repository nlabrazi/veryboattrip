class Boat < ApplicationRecord
  has_many :deals
  has_many :reviews
  belongs_to :user
  has_many_attached :photos

  validates :name, uniqueness: true, presence: true
  validates :boat_type, presence: true
  validates :size, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
