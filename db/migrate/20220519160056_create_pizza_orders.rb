class CreatePizzaOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :pizza_orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.references :store, null: false, foreign_key: true
      t.references :crust, null: false, foreign_key: true
      t.references :sauce, null: false, foreign_key: true
      t.string :due_date
      t.integer :due_time
      t.boolean :status
      t.integer :quantity
      t.string :image

      t.timestamps
    end
  end
end
