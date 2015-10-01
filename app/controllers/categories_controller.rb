class CategoriesController < ApplicationController
  expose(:category)
  expose(:categories)
  expose(:art)

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if category.save
      redirect_to category, notice: 'Category was successfully created'
    else
      render :new
    end
  end

  def update
    if category.update
      redirect_to category, notice: 'Category was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    category.destroy
    redirect_to caterories_url, notice: 'Category was successfully deleted'
  end
end
