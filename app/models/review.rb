class Review < ApplicationRecord
  belongs_to :deals
  belongs_to :users

  validates :rating, presence: true
  validates :title, presence: true
  validates :comment, presence: true
end
