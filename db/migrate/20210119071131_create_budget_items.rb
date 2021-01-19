class CreateBudgetItems < ActiveRecord::Migration[6.0]
  def change
    create_table :budget_items, id: :uuid do |t|
      t.text :name
      t.text :description
      t.money :amount
      t.boolean :recurring
      t.date :expirationDate
      t.uuid :user_id
      t.uuid :wishlist_item_id

      t.timestamps
    end

    add_index :budget_items, :user_id
    add_index :budget_items, :wishlist_item_id
  end
end
