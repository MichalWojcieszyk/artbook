class MuseumsController < ApplicationController
  expose(:museum)
  expose(:museums) { Museum.order(:name) }

  def index
  end

  def show
  end

  def create
    museum = Museum.new(museum_params)
    if museum.save
      redirect_to museum, notice: 'Museum was successfully created'
    else
      render :new
    end
  end

  def new
  end

  def destroy
    museum.destroy
    redirect_to museums_path, notice: 'Museum was successfully destroyed'
  end

  def edit
  end

  def update
    if museum.updated(museum_params)
      redirect_to museum, notice: 'Museum was successfully updated'
    else
      render :edit
    end
  end

  private

  def museum_params
    params.require(:museum).permit(:name, :address, :start_date, :location)
  end
end
