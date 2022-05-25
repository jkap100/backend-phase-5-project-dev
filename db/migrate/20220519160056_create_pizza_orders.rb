class CreatePizzaOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :pizza_orders do |t|
      t.references :user, null: false, foreign_key: true
      
      t.references :store, null: false, foreign_key: true
      t.references :crust, null: false, foreign_key: true
      t.references :sauce, null: false, foreign_key: true
      t.string :due_date
      t.string :due_time
      t.string :status
      t.string :order_type
      t.integer :quantity
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.integer :card_number, :limit => 8
      t.integer :ccv
      t.string :card_expiration
      t.integer :card_zip

      

      t.timestamps
    end
  end
end
