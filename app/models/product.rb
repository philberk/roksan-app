class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
