class AddWistlistItemRefToBudgetItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :budget_items, :wishlist_item, null: false, foreign_key: true
  end
end
