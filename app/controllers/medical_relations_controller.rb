class MedicalRelationsController < ApplicationController
  def index

    @q = MedicalRelation.ransack(params[:q])
    @medical_relations = @q.result
    # render("doctors/index.html.erb")
    #
    # @medical_relations = MedicalRelation.all

    # @filterrific = initialize_filterrific(
    # MedicalRelation,
    # params[:filterrific]
    # ) or return
    # @medical_relation = @filterrific.find.page(params[:page])
    #
    # respond_to do |format|
    #   format.html
    #   format.js
    # end

    render("medical_relations/index.html.erb")
  end

  def indexpaciente

    @q = MedicalRelation.ransack(params[:q])
    @medical_relations = @q.result
    @credentials = Credential.all
    # render("doctors/index.html.erb")
    #
    # @medical_relations = MedicalRelation.all

    # @filterrific = initialize_filterrific(
    # MedicalRelation,
    # params[:filterrific]
    # ) or return
    # @medical_relation = @filterrific.find.page(params[:page])
    #
    # respond_to do |format|
    #   format.html
    #   format.js
    # end

    render("medical_relations/indexpaciente.html.erb")
  end

  def show

    @medical_relation = MedicalRelation.find(params[:id])

    if @medical_relation.birthdate != nil
      dob = @medical_relation.birthdate
      @now = Time.now.utc.to_date
      year = @now.year - dob.year - ((@now.month > dob.month || (@now.month == dob.month && @now.day >= dob.day)) ? 0 : 1)
      @age = year
    else
      @age =""
    end

    if @medical_relation.office_profile_id != nil
      if @medical_relation.office_profile.gender == "m"
        @gender = "Masculino"
      elsif @medical_relation.office_profile.gender == "f"
        @gender = "Femenino"
      else
        @gender = ""
      end
    else
      if @medical_relation.patient.gender == "m"
        @gender = "Masculino"
      elsif @medical_relation.patient.gender == "f"
        @gender = "Femenino"
      else
        @gender = ""
      end
    end

    if current_doctor != nil
      @event_new = Event.new
      @events = Event.where("doctor_id"=>current_doctor.id)
      @evol_mednotes = EvolMednote.where("doctor_id"=>current_doctor.id)
      @claims = Claim.where("doctor_id"=>current_doctor.id)
    end
    @specific_profile = OfficeProfile.all
    render("medical_relations/show.html.erb")
  end



  def search
    @pacientes = Patient.where("email"=>params[:email])
    @office_profile = OfficeProfile.new
    render("medical_relations/search.html.erb")
  end



  def new
    @medical_relation = MedicalRelation.new
    @office_profile = OfficeProfile.new
    render("medical_relations/new.html.erb")
  end

  def create
    @medical_relation = MedicalRelation.new

    @medical_relation.doctor_id = params[:doctor_id]
    @medical_relation.patient_id = params[:patient_id]
    @medical_relation.office_profile_id = params[:office_profile_id]
    @medical_relation.first_name = params[:first_name]
    @medical_relation.Last_mother = params[:Last_mother]
    @medical_relation.last_father = params[:last_father]
    @medical_relation.birthdate = params[:birthdate]

    save_status = @medical_relation.save

    # @specific_profile = OfficeProfile.new
    #
    # @specific_profile.doctor_id = params[:doctor_id]
    # @specific_profile.patient_id = params[:patient_id]

    # save_status = @specific_profile.save


    if save_status == true
      if current_doctor != nil
        redirect_to("/medical_relations", :notice => "Medical relation created successfully.")
      else

        redirect_to("/expediente/paciente", :notice => "Medical relation created successfully.")
      end
    else
      render("medical_relations/new.html.erb")
    end
  end

  def edit
    @medical_relation = MedicalRelation.find(params[:id])

    render("medical_relations/edit.html.erb")
  end

  def update
    @medical_relation = MedicalRelation.find(params[:id])
    @medical_relation.patient_id = params[:office_profile_id]
    @medical_relation.doctor_id = params[:doctor_id]
    @medical_relation.patient_id = params[:patient_id]
    @medical_relation.permission = params[:permission]
    @medical_relation.doctor_id = params[:doctor_id]
    @medical_relation.patient_id = params[:patient_id]
    @medical_relation.office_profile_id = params[:office_profile_id]
    @medical_relation.first_name = params[:first_name]
    @medical_relation.Last_mother = params[:Last_mother]
    @medical_relation.last_father = params[:last_father]
    @medical_relation.birthdate = params[:birthdate]


    save_status = @medical_relation.save

    if save_status == true
      redirect_to("/expediente/paciente", :notice => "Medical relation updated successfully.")
    else
      render("medical_relations/edit.html.erb")
    end
  end

  def approve

    @medical_relation = MedicalRelation.find(params[:id])


    render("medical_relations/approve.html.erb")
    # ,:layout=>false

  end


  def destroy
    @medical_relation = MedicalRelation.find(params[:id])

    @medical_relation.destroy

    if URI(request.referer).path == "/medical_relations/#{@medical_relation.id}"
      redirect_to("/", :notice => "Medical relation deleted.")
    else
      redirect_to(:back, :notice => "Medical relation deleted.")
    end
  end
end
