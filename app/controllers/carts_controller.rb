class CartsController  <   ApplicationController
  def new
    #byebug
  end
  def create
    #x = params.require(:cart).permit(:pid)
    byebug
  end
  def show
    @orders = Cart.where(user_id: session[:user_id])
    #byebug
  end
end
