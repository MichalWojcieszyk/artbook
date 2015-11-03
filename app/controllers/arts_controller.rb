class ArtsController < ApplicationController
  expose(:category)
  expose(:art)
  expose(:arts) { Art.order(:rating) }
  expose(:art_comments, ancestor: :art)

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if art.save
      category.arts << art
      redirect_to category_art_url(category, art), notice: "Your work of art was successfully created"
    end
  end

  def update
    if art.update(art_params)
      redirect_to category_art_url(category, art), notice: "Work of art was successfully updated"
    end
  end

  def destroy
    if art.destroy
      redirect_to category_url(art.category), notice: "Work of art was successfully deleted"
    end
  end

  private
  
  def art_params
    params.require(:art).permit(:title, :description, :production_date, :author, :style, :image, :owner, :location)
  end
end
