class CreateWishlistItems < ActiveRecord::Migration[6.0]
  def change
    create_table :wishlist_items, id: :uuid do |t|
      t.text :name
      t.text :description
      t.money :price
      t.text :url
      t.integer :priority
      t.uuid :user_id

      t.timestamps
    end

    add_index :wishlist_items, :user_id
  end
end
