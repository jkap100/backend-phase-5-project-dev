class CreateToppings < ActiveRecord::Migration[7.0]
  def change
    create_table :toppings do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
