class ArtsController < ApplicationController
  expose(:category)
  expose(:art)
  expose(:arts) { Art.order(:rating) }
  expose(:art_comments, ancestor: :art)
  expose(:author)

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    self.art = Art.new(art_params)
    art.user_id = current_user.id
    if art.save
      arts << art
      redirect_to arts_path, notice: "Your work of art was successfully created"
    else 
      render :new
    end
  end

  def update
    if art.update(art_params)
      redirect_to category_art_url(category, art), notice: "Work of art was successfully updated"
    else 
      render :edit
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
