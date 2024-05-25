class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :content
      t.decimal :price, precision: 10, scale: 0, null: false
      t.string :label

      t.timestamps
    end
  end
end
