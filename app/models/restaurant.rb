class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian]

  validates :name, :address, :category, presence: true
  validates :category, acceptance: { accept: CATEGORY }

  has_many :reviews, dependent: :destroy
end
