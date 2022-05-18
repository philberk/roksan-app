class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def top
    @products = Product.where(rating: 5)
  end

  def show; end

  def new
    @product = Product.new
  end

  def create
    # raise // Whenever you add a new product, if you raise and do params[:product], you'll see all params.
    @product = Product.new(product_params)
    @product.save
    redirect_to product_path(@product)
  end

  def edit; end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :rating, :category, :price)
  end

  def find_product
    @product = Product.find(params[:id])
  end

end
