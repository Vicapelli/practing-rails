class Review < ApplicationRecord
  belongs_to :pizzarium
  belongs_to :user
  validates :content, presence: true

end
