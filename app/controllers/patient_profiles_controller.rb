class PatientProfilesController < ApplicationController
  def index
    @patient_profiles = PatientProfile.all

    render("patient_profiles/index.html.erb")
  end

  def show
    @patient_profile = PatientProfile.find(params[:id])

    render("patient_profiles/show.html.erb")
  end

  def new
    @patient_profile = PatientProfile.new

    render("patient_profiles/new.html.erb")
  end

  def create
    @patient_profile = PatientProfile.new

    @patient_profile.curp = params[:curp]
    @patient_profile.rfc = params[:rfc]
    @patient_profile.first_name = params[:first_name]
    @patient_profile.last_name_father = params[:last_name_father]
    @patient_profile.last_name_mother = params[:last_name_mother]
    @patient_profile.gender = params[:gender]
    @patient_profile.user_id = params[:user_id]
    @patient_profile.phone = params[:phone]
    @patient_profile.street_address = params[:street_address]
    @patient_profile.city = params[:city]
    @patient_profile.state = params[:state]
    @patient_profile.zipcode = params[:zipcode]
    @patient_profile.country = params[:country]
    @patient_profile.birthdate = params[:birthdate]

    save_status = @patient_profile.save

    if save_status == true
      redirect_to("/patient_profiles/#{@patient_profile.id}", :notice => "Patient profile created successfully.")
    else
      render("patient_profiles/new.html.erb")
    end
  end

  def edit
    @patient_profile = PatientProfile.find(params[:id])

    render("patient_profiles/edit.html.erb")
  end

  def update
    @patient_profile = PatientProfile.find(params[:id])

    @patient_profile.curp = params[:curp]
    @patient_profile.rfc = params[:rfc]
    @patient_profile.first_name = params[:first_name]
    @patient_profile.last_name_father = params[:last_name_father]
    @patient_profile.last_name_mother = params[:last_name_mother]
    @patient_profile.gender = params[:gender]
    @patient_profile.user_id = params[:user_id]
    @patient_profile.phone = params[:phone]
    @patient_profile.street_address = params[:street_address]
    @patient_profile.city = params[:city]
    @patient_profile.state = params[:state]
    @patient_profile.zipcode = params[:zipcode]
    @patient_profile.country = params[:country]
    @patient_profile.birthdate = params[:birthdate]

    save_status = @patient_profile.save

    if save_status == true
      redirect_to("/patient_profiles/#{@patient_profile.id}", :notice => "Patient profile updated successfully.")
    else
      render("patient_profiles/edit.html.erb")
    end
  end

  def destroy
    @patient_profile = PatientProfile.find(params[:id])

    @patient_profile.destroy

    if URI(request.referer).path == "/patient_profiles/#{@patient_profile.id}"
      redirect_to("/", :notice => "Patient profile deleted.")
    else
      redirect_to(:back, :notice => "Patient profile deleted.")
    end
  end
end
