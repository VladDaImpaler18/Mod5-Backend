class CreateBudgetItems < ActiveRecord::Migration[6.0]
  def change
    create_table :budget_items do |t|
      t.uuid :uuid
      t.text :name
      t.text :description
      t.money :amount
      t.boolean :recurring
      t.date :expirationDate
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
