class HomeController < ApplicationController

  def show
    @medical_relations = MedicalRelation.all


    render("home/dashboard.html.erb")

  end

  def contact
    render("home/contacto.html.erb")
  end

end
