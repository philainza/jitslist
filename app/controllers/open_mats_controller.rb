class OpenMatsController < ApplicationController
  def index
    @open_mats = OpenMat.upcoming
  end

  def show
    @open_mat = OpenMat.find(params[:id])
  end

  def edit
    @open_mat = OpenMat.find(params[:id])
  end

  def update
    @open_mat = OpenMat.find(params[:id])
    if @open_mat.update(open_mat_params)
      redirect_to @open_mat
    else
      render :edit
    end
  end

  def new
    @open_mat = OpenMat.new
  end

  def create
    @open_mat = OpenMat.new(open_mat_params)
    if @open_mat.save
      redirect_to @open_mat
    else
      render :new
    end
  end 

  def destroy
    @open_mat = OpenMat.find(params[:id])
    @open_mat.destroy
    redirect_to open_mats_url
  end

  private

    def open_mat_params
      params.require(:open_mat).permit(:location, :host, :number_people_attending, :starts_at, :image_file_name)
    end
end
