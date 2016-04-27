class RegistrationsController < ApplicationController
  before_action :set_open_mat

  def index
    @registrations = @open_mat.registrations
  end

  def new
    @registration = @open_mat.registrations.new
  end

  def create
    @registration = @open_mat.registrations.new(registration_params)
    if @registration.save
      redirect_to open_mat_registrations_path(@open_mat),
                      notice: "Thanks for your registration!"
    else
      render :new
    end
  end

private
  
  def registration_params
    params.require(:registration).permit(:name, :email, :gender, :age, :belt_level, :affiliation)
  end

  def set_open_mat
    @open_mat = OpenMat.find(params[:open_mat_id])
  end
end
