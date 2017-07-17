class HomeController < ApplicationController

  def show
    @medical_relations = MedicalRelation.all



    render("home/dashboard.html.erb")

  end
end
