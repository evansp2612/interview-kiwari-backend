class ProductsController < ApplicationController
  def index
    product = Product.order('id')
    render json: {code: 200, msg: "success", data: product}, status: :ok
  end

  def show
    product = Product.find(params[:id])
    render json: {code: 200, msg: "success", data: product}, status: :ok
  end

  def create
    product = Product.new(product_params)
    product.save
    render json: {code: 200, msg: "success", data: product}, status: :ok
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {code: 200, msg: "success", data: []}, status: :ok
  end

  def update
    product = Product.find(params[:id])
    product.update_attributes(product_params)
    render json: {code: 200, msg: "success", data: product}, status: :ok
  end

  private
  def product_params
    params.permit(:name, :price, :image)
  end
end
