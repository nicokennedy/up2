class Product < ApplicationRecord
  belongs_to :supply
  has_many :product_sales
end
