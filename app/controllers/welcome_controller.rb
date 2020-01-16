class WelcomeController < ApplicationController
  def home
    @products = Product.all
    #byebug
    if params[:srt]== "2"
      @products = @products.order(price: :asc)
    else #if params[:srt] != "2"
      @products = @products.order(price:  :desc)
    
    end
  end

end
