class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :image, presence: true

end
