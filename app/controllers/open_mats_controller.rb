class OpenMatsController < ApplicationController
  def index
    @open_mats = OpenMat.all
  end
end
