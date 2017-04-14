class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with name: ENV['auth_name'], password: ENV['auth_password'], except: :index

  def index
    @category = Category.all.order(created_at: :desc)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :index
    end
  end

  def destroy
    @category = Category.find params[:id]
    @category.destroy
    redirect_to [:admin, :products], notice: 'Category deleted!'
  end

  private
  def category_params
    params.require(:category).permit(
      :name
      )
  end

end
