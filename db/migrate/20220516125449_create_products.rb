class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.integer :rating
      t.string :comments

      t.timestamps
    end
  end
end
