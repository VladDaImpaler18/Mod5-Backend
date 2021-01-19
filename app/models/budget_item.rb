class BudgetItem < ApplicationRecord
  self.implicit_order_column = "created_at" #This will allow .first .last commands to work
  # The above explicitly makes the ORDER BY variable "created_at"
  # User.last => SELECT * FROM users ORDER BY created_at DESC LIMIT 1

  belongs_to :user
  belongs_to :wishlist_item
end
