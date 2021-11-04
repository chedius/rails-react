class CreateWears < ActiveRecord::Migration[6.1]
  def change
    create_table :wears do |t|
      t.string :brand
      t.string :element
      t.string :country
      t.integer :quantity

      t.timestamps
    end
  end
end
