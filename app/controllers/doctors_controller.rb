require 'open-uri'
require 'json'

class DoctorsController < ApplicationController

  def read
    @doctor = Doctor.find(params[:id])

    @doctor2 = Doctor.find(params[:id])

    @street_address = @doctor.street_address_work

    # ==========================================================================
    # Your code goes below.
    #
    # The street address that the user typed is in the variable @street_address.
    # ==========================================================================
    url="http://maps.googleapis.com/maps/api/geocode/json?address="+@street_address
    parsed_data = JSON.parse(open(url).read)
    latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
    longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

    @latitude = latitude

    @longitude = longitude

    @events = Event.where("patient_id"=>current_patient.id)

    render("users/doctors/read.html.erb")
  end



end
