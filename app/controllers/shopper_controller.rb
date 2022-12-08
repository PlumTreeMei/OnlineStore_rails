class ShopperController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products=Product.all
    @products=@products.where("name =?", params[:n]) if params[:n].present?
    @products=@products.where("description LIKE ?", params[:d] + "%") if params[:d].present?
    @products=@products.min_price(params[:min]) if params[:min].present?
    @products=@products.min_price(params[:max]) if params[:max].present?

  end

  # GET /shopper/1 or /shopper/1.json
  def show
    @product=Product.find(params[:id])
  end
end
