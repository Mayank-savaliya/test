class AddCatagoryIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column  :products,  :catagory_id, :integer
    add_column  :products,  :fav_counter, :integer, default: 0
    add_column  :products,  :order_cunter,  :integer, default: 0 
  end
end
