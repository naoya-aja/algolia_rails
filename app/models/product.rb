class Product < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }
  validates :price, numericality: { only_integer: true }
end
