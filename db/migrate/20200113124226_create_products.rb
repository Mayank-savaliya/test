class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string  :name, null:false
      t.text  :description
      t.decimal :price, precision: 15, scale: 2
      t.timestamps
      t.string  :pic
    end
  end
end
