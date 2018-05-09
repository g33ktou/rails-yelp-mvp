class Restaurant < ApplicationRecord
  categories = %w(italian chinese japanese french belgian)
  has_many :reviews
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion:{in: categories}
end
