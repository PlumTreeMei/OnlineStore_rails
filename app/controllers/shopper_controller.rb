class ShopperController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @products=Product.order(:name)
  end

  # GET /shopper/1 or /shopper/1.json
  def show
    @product=Product.find(params[:id])
  end
end
