class BudgetItem < ApplicationRecord
  self.implicit_order_column = "created_at" #This will allow .first .last commands to work
  # The above explicitly makes the ORDER BY variable "created_at"
  # User.last => SELECT * FROM users ORDER BY created_at DESC LIMIT 1

  belongs_to :user
  belongs_to :wishlist_item, optional: true
  
  validates :name, :amount, :user_id, presence: true

  validates :expirationDate, presence: true, if: :recurring #This is probably easier to prevent in front end.
  
  private
  def recurring?
    recurring
  end
end
