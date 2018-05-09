class Review < ApplicationRecord
  belongs_to :restaurants
  validates :content, presence: true
  validates :rating, presence: true
end
