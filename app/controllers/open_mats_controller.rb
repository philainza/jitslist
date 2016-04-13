class OpenMatsController < ApplicationController
  def index
    @open_mats = OpenMat.all
  end

  def show
    @open_mat = OpenMat.find(params[:id])
  end

  def edit
    @open_mat = OpenMat.find(params[:id])
  end

  def update
    @open_mat = OpenMat.find(params[:id])
    open_mat_params = params.require(:open_mat).permit(:location, :host, :number_people_attending, :starts_at)
    @open_mat.update(open_mat_params)
    redirect_to @open_mat
  end
end
