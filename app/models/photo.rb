class Photo < ApplicationRecord
  belongs_to :reservation

  has_one_attached :image

  validates :image, presence: true
end
