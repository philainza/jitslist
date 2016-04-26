class RegistrationsController < ApplicationController
  def index
    @open_mat = OpenMat.find(params[:open_mat_id])
    @registrations = @open_mat.registrations
  end
end
