require 'open-uri'
require 'json'

class DoctorsController < ApplicationController

  def read
    @doctor = Doctor.find(params[:id])
    @doctor2 = Doctor.find(params[:id])
    @street_address = @doctor.street_address_work



    if current_patient != nil
      @events = Event.where("patient_id"=>current_patient.id)
    end

    render("doctor_list/read.html.erb")
  end


  def index

    @q = Credential.ransack(params[:q])
    @doctors = @q.result
    render("doctors/index.html.erb")

  end


  def show
    @doctor = Doctor.find(params[:id])

    render("doctor_list/show.html.erb")
  end


  def destroy
    @doctor = Doctor.find(params[:id])

    @doctor.destroy

    if URI(request.referer).path == "/doctors/#{@doctor.id}"
      redirect_to("/", :notice => "Doctor eliminado.")
    else
      redirect_to(:back, :notice => "Doctor eliminado.")
    end
  end

end
