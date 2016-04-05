class OpenMatsController < ApplicationController
  def index
    @open_mats = ["Pacific Beach", "Mission Beach", "La Jolla Shores"]
  end
end
