class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    # raise // Whenever you add a new product, if you raise and do params[:product], you'll see all params.
    @product = Product.new(product_params)
    @product.save
    redirect_to product_path(@product)
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :rating, :category, :price)
  end

end
