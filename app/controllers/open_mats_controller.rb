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
    @open_mat.update(open_mat_params)
    redirect_to @open_mat
  end

  def new
    @open_mat = OpenMat.new
  end

  def create
    @open_mat = OpenMat.new(open_mat_params)
    @open_mat.save
    redirect_to @open_mat
  end 

  def destroy
    @open_mat = OpenMat.find(params[:id])
    @open_mat.destroy
    redirect_to open_mats_url
  end

  private

    def open_mat_params
      params.require(:open_mat).permit(:location, :host, :number_people_attending, :starts_at)
    end
end
