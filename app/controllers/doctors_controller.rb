require 'open-uri'
require 'json'

class DoctorsController < ApplicationController

  def read
    @doctor = Doctor.find(params[:id])
    @doctor2 = Doctor.find(params[:id])
    @street_address = @doctor.street_address_work
    @events = Event.where("patient_id"=>current_patient.id)

    render("users/doctors/read.html.erb")
  end


  def index
    @doctors = Doctor.all

    render("users/doctors/index.html.erb")
  end

end
