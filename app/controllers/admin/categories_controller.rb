class Admin::CategoriesController < ApplicationController

  def index
    @category = Category.all.order(created_at: :desc)
  end

  def create
    @category = Category.new(category_params)
    if @product.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  def destroy
    @category = Category.find params[:id]
    @category.destroy
    redirect_to [:admin, :products], notice: 'Category deleted!'
  end

  private
  def category_params
    params.require(:categories).permit(
      :name,
      )
  end

end
