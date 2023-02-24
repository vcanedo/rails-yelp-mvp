class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true

  validates :rating, numericality: { only_integer: true }
  validates :rating, acceptance: { accept: (0..5) }
end
