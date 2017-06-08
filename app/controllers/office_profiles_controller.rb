class OfficeProfilesController < ApplicationController
  def index
    @office_profiles = OfficeProfile.all

    render("office_profiles/index.html.erb")
  end

  def show
    @office_profile = OfficeProfile.find(params[:id])

    render("office_profiles/show.html.erb")
  end

  def new
    @office_profile = OfficeProfile.new

    render("office_profiles/new.html.erb")
  end

  def create
    @office_profile = OfficeProfile.new

    @office_profile.doctor_id = params[:doctor_id]
    @office_profile.patient_id = params[:patient_id]
    @office_profile.birthdate = params[:birthdate]
    @office_profile.gender = params[:gender]
    @office_profile.phone_mobile = params[:phone_mobile]

    save_status = @office_profile.save

    if save_status == true
      redirect_to("/office_profiles/#{@office_profile.id}", :notice => "Office profile created successfully.")
    else
      render("office_profiles/new.html.erb")
    end
  end

  def edit
    @office_profile = OfficeProfile.find(params[:id])

    render("office_profiles/edit.html.erb")
  end

  def update
    @office_profile = OfficeProfile.find(params[:id])

    @office_profile.doctor_id = params[:doctor_id]
    @office_profile.patient_id = params[:patient_id]
    @office_profile.birthdate = params[:birthdate]
    @office_profile.gender = params[:gender]
    @office_profile.phone_mobile = params[:phone_mobile]

    save_status = @office_profile.save

    if save_status == true
      redirect_to("/office_profiles/#{@office_profile.id}", :notice => "Office profile updated successfully.")
    else
      render("office_profiles/edit.html.erb")
    end
  end

  def destroy
    @office_profile = OfficeProfile.find(params[:id])

    @office_profile.destroy

    if URI(request.referer).path == "/office_profiles/#{@office_profile.id}"
      redirect_to("/", :notice => "Office profile deleted.")
    else
      redirect_to(:back, :notice => "Office profile deleted.")
    end
  end
end
