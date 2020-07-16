class Pizzarium < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true

  has_one_attached :image

end
