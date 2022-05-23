class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :open
      t.string :close
      t.integer :phone
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
