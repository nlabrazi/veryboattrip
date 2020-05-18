class Deal < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  belongs_to :review
end
