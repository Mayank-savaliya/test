class Product < ApplicationRecord
  belongs_to  :catagory
  has_many  :carts
  #has_many  :users, through: :carts
end
