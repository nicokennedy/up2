class PurchaseSupply < ApplicationRecord
  belongs_to :purchase
  belongs_to :supply
end
