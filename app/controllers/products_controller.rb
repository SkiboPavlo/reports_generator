class ProductsController < ApplicationController

  before_action :load_product, only: [:edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @products = Product.all
  end

  def new
    @template = Template.find(params[:template_id])
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:success] = ['Product created']
      redirect_to template_path(@product.template)
    else
      flash[:error] = @product.errors.full_messages
      redirect_to :back
    end
  end

  def update
    if @product.update_attributes(product_params)
      flash[:success] = ['Product updated']
      redirect_to template_product_path
    else
      flash[:error] = @product.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    @product.destroy
    flash[:success] = ['Product destroyed']
    redirect_to :back
  end

  private

  def load_product
    @product = Product.find params[:id]
  end

  def product_params
    params.require(:product).permit(:name, :price, :count).merge(template_id: params[:template_id])
  end
end
