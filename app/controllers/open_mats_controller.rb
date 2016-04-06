class OpenMatsController < ApplicationController
  def index
    @open_mats = OpenMat.all
  end

  def show
    @open_mat = OpenMat.find(params[:id])
  end
end
