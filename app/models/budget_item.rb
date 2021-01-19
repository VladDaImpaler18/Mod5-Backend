class BudgetItem < ApplicationRecord
  belongs_to :User
  belongs_to :WishlistItem
end
