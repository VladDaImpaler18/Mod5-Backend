class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :uuid do |t|
      t.text :name
      t.text :email

      t.timestamps
    end
  end
end
