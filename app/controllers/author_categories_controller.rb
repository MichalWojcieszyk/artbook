class AuthorCategoriesController < ApplicationController
  expose(:author_category)
  expose(:author_categories) { AuthorCategory.order(:name) }
  expose(:author) { Author.new }

  def index
  end

  def show
  end

  def new
  end

  def create
    author_category = AuthorCategory.new(author_category_params)
    if author_category.save
      redirect_to author_category, notice: 'Category was successfully created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if author_category.update(author_category_params)
      redirect_to author_category, notice: 'Category was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    author_category.destroy
    redirect_to author_categories_path, notice: 'Category was successfully deleted'
  end

  private

  def author_category_params
    params.require(:author_category).permit(:name)
  end
end
