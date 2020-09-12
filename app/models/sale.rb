class Sale < ApplicationRecord
  has_many :product_sales
  belongs_to :client
end
