class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    if current_user
      @product = Product.new(product_params)
      @product.save
      redirect_to products_path, notice: 'Product was successfully created.'
    else
      redirect_to login_path, notice: "Must be logged in to create a product"
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private
  
  def product_params
    params.require(:product).permit(:name, :price, :company_id)
  end

end
