  # require 'open-uri'
  # require 'json'

class AnalyticsController < ApplicationController



  def doctor



  end

  def doctor_show
    @doctor = Doctor.find(params[:id])

    render("analytics/doctor"+params[:id]+".html.erb")
  end




end
