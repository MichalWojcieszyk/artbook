class AuthorsController < ApplicationController
  expose(:author_category)
  expose(:author)
  expose(:authors) {Author.order(:rating)}
  expose(:author_comments, ancestor: :author)

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    self.author = Author.new(author_params)
    author.user_id = current_user.id
    if author.save
      authors << author
      redirect_to authors_path, notice: "Author was successfully created"
    else
      render :new
    end
  end

  def update
    if author.update(author_params)
      redirect_to authors_path, notice: "Author was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    if author.destroy
      redirect_to authots_path
    end
  end

  private

  def author_params
    params.require(:author).permit(:name, :birth_date, :die_date, :hometown, :photo, :biography)
  end
end
