class Coordinate < ApplicationRecord
  belongs_to :user
  # has_many :items, throuth: :coordinate_items
  has_many_attached :images

  validates :images, presence: true
end
