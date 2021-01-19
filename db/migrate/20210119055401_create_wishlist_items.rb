class CreateWishlistItems < ActiveRecord::Migration[6.0]
  def change
    create_table :wishlist_items do |t|
      t.uuid :uuid
      t.text :name
      t.text :description
      t.money :price
      t.text :url
      t.integer :priority
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
