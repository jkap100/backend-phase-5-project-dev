class CreateCrusts < ActiveRecord::Migration[7.0]
  def change
    create_table :crusts do |t|
      t.string :name
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
