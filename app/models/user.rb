class User < ApplicationRecord
    self.implicit_order_column = "created_at"
    
    has_many :WishlistItems
    has_many :BudgetItems

    attribute :WishlistItems
    attribute :BudgetItems
end
