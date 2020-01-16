class ProductsController  < ApplicationController
  before_action :prev, only: [:new, :create]
  def new
    @product = Product.new
  end
  def create
    @product = Product.new(product_params)
    @product.save
  end
  def show
    @product = Product.find(params[:id])
    @cart = Cart.new
    #byebug
  end
  def foo
    #byebug
    @cart = Cart.new(product_id:params[:id])
    @cart.user_id = session[:user_id]
    @cart.save
    byebug
  end
  private
  def cart_params
    params.permit(:id)
  end
    def product_params
      params.require(:product).permit(:name,:description,:catagory_id)
    end
    def prev
        if !logged_in_sell?
          flash[:error] = "Login with your seller id"
          redirect_to login_path
        elsif logged_in? && !logged_in_sell?
          byebug
          flash[:error] = "Login with your seller id"
          redirect_to root_path
        end

    end
end
