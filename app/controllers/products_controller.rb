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
    @product = Product.new(product_params)
    if @product.save
      flash[:alert] = "Product Added!"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:alert] = "Product Removed"
    redirect_to products_path
  end

  def upvote
  @product = Product.find(params[:id])
  @product.upvote_by current_admin
  redirect_to :back
end

def downvote
  @product = Product.find(params[:id])
  @product.downvote_by current_admin
  redirect_to :back
end

  private
  def product_params
    params.require(:product).permit(:name, :cost, :origin, :img)
  end

end
