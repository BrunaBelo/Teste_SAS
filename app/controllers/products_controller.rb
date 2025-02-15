class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:product_listing]
  before_action :set_product, only: %i[ edit update destroy ]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: "Product was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to products_path, notice: 'Product was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
    end
  end

  def product_listing
    @products = Product.all
    @products = Product.price_beetwen(params['category']['start'], params['category']['end']) if category?
    
    respond_to do |format|
      format.html
      format.js
    end
  end

  private
    def category?
      params['category'].present?
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :image)
    end
end
