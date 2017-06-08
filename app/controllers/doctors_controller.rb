class DoctorsController < ApplicationController

  def read
      @doctor = Doctor.find(params[:id])
      render("users/doctors/read.html.erb")
  end

end
