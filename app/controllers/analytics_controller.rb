  # require 'open-uri'
  # require 'json'

class AnalyticsController < ApplicationController



  def doctor

  end

  def doctor_show
    @doctor = Doctor.find(params[:id])

    @plots = Doclytic.where("doctor_id"=>current_doctor.id)

    render("analytics/doctor.html.erb")
  end

  def broker_show
    @broker = Insurer.find(params[:id])

    @plots = Broklytic.where("insurer_id"=>current_insurer.id)

    render("analytics/broker.html.erb")
  end




end
