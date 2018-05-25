class EvolMednotesController < ApplicationController
  def index
    @evol_mednotes = EvolMednote.all

    render("evol_mednotes/index.html.erb")
  end

  def show
    @evol_mednote = EvolMednote.find(params[:id])
    # @medical_relation = MedicalRelation.where(patient_id: @evol_mednote.patient_id, doctor_id: @evol_mednote.doctor_id).last.id
    render("evol_mednotes/show.html.erb")
  end

  def new
    @evol_mednote = EvolMednote.new
    @patient = MedicalRelation.find(params[:pid])
    @event = Event.find(params[:eid])



    if @patient.birthdate != nil
      dob = @patient.birthdate
      @now = Time.now.utc.to_date
      year = @now.year - dob.year - ((@now.month > dob.month || (@now.month == dob.month && @now.day >= dob.day)) ? 0 : 1)
      @patient_age = year
    else
      @patient_age =""
    end

    if @patient.gender == "m"
      @gender = "Masculino"
    elsif @patient.gender == "f"
      @gender = "Femenino"
    else
      @gender = ""
    end
render("evol_mednotes/new.html.erb")
  end

  def create
    @evol_mednote = EvolMednote.new

    @evol_mednote.prescription_id = params[:prescription_id]
    @evol_mednote.lab_tests_id = params[:lab_tests_id]
    @evol_mednote.doctor_id = params[:doctor_id]
    @evol_mednote.mednote_responsible = params[:mednote_responsible]
    @evol_mednote.mednote_responsible_sign = params[:mednote_responsible_sign]
    @evol_mednote.patient_id = params[:patient_id]
    @evol_mednote.patient_name = params[:patient_name]
    @evol_mednote.patient_gender = params[:patient_gender]
    @evol_mednote.patient_age = params[:patient_age]
    @evol_mednote.record_id = params[:record_id]
    @evol_mednote.exterior_obs = params[:exterior_obs]
    @evol_mednote.temperature = params[:temperature]
    @evol_mednote.blood_pressure = params[:blood_pressure]
    @evol_mednote.heart_freq = params[:heart_freq]
    @evol_mednote.breathing_rate = params[:breathing_rate]
    @evol_mednote.weight = params[:weight]
    @evol_mednote.size = params[:size]
    @evol_mednote.data_head = params[:data_head]
    @evol_mednote.data_neck = params[:data_neck]
    @evol_mednote.data_chest = params[:data_chest]
    @evol_mednote.data_abdomen = params[:data_abdomen]
    @evol_mednote.data_limbs = params[:data_limbs]
    @evol_mednote.data_genitals = params[:data_genitals]
    @evol_mednote.lab_results = params[:lab_results]
    @evol_mednote.clinical_diagnose = params[:clinical_diagnose]
    @evol_mednote.forecast = params[:forecast]
    @evol_mednote.therapeutic_indic = params[:therapeutic_indic]
    @evol_mednote.evolution_update_cc = params[:evolution_update_cc]
    @evol_mednote.tx_results = params[:tx_results]
    @evol_mednote.tx = params[:tx]
    @evol_mednote.evol_dose = params[:evol_dose]
    @evol_mednote.evol_med_intake = params[:evol_med_intake]
    @evol_mednote.evol_med_periodicity = params[:evol_med_periodicity]
    @evol_mednote.event_id = params[:event_id]
    @evol_mednote.medical_relation_id = params[:medical_relation_id]

    save_status = @evol_mednote.save

    if save_status == true
      redirect_to("/evol_mednotes/#{@evol_mednote.id}", :notice => "Evol mednote created successfully.")
    else
      render("evol_mednotes/new.html.erb")
    end
  end

  def edit
    @evol_mednote = EvolMednote.find(params[:id])

    render("evol_mednotes/edit.html.erb")
  end

  def update
    @evol_mednote = EvolMednote.find(params[:id])

    @evol_mednote.prescription_id = params[:prescription_id]
    @evol_mednote.lab_tests_id = params[:lab_tests_id]
    @evol_mednote.doctor_id = params[:doctor_id]
    @evol_mednote.mednote_responsible = params[:mednote_responsible]
    @evol_mednote.mednote_responsible_sign = params[:mednote_responsible_sign]
    @evol_mednote.patient_id = params[:patient_id]
    @evol_mednote.patient_name = params[:patient_name]
    @evol_mednote.patient_gender = params[:patient_gender]
    @evol_mednote.patient_age = params[:patient_age]
    @evol_mednote.record_id = params[:record_id]
    @evol_mednote.exterior_obs = params[:exterior_obs]
    @evol_mednote.temperature = params[:temperature]
    @evol_mednote.blood_pressure = params[:blood_pressure]
    @evol_mednote.heart_freq = params[:heart_freq]
    @evol_mednote.breathing_rate = params[:breathing_rate]
    @evol_mednote.weight = params[:weight]
    @evol_mednote.size = params[:size]
    @evol_mednote.data_head = params[:data_head]
    @evol_mednote.data_neck = params[:data_neck]
    @evol_mednote.data_chest = params[:data_chest]
    @evol_mednote.data_abdomen = params[:data_abdomen]
    @evol_mednote.data_limbs = params[:data_limbs]
    @evol_mednote.data_genitals = params[:data_genitals]
    @evol_mednote.lab_results = params[:lab_results]
    @evol_mednote.clinical_diagnose = params[:clinical_diagnose]
    @evol_mednote.forecast = params[:forecast]
    @evol_mednote.therapeutic_indic = params[:therapeutic_indic]
    @evol_mednote.evolution_update_cc = params[:evolution_update_cc]
    @evol_mednote.tx_results = params[:tx_results]
    @evol_mednote.tx = params[:tx]
    @evol_mednote.evol_dose = params[:evol_dose]
    @evol_mednote.evol_med_intake = params[:evol_med_intake]
    @evol_mednote.evol_med_periodicity = params[:evol_med_periodicity]
    @evol_mednote.event_id = params[:event_id]
    @evol_mednote.medical_relation_id = params[:medical_relation_id]


    save_status = @evol_mednote.save

    if save_status == true
      redirect_to("/evol_mednotes/#{@evol_mednote.id}", :notice => "Nota actualizada exitosamente.")
    else
      render("evol_mednotes/edit.html.erb")
    end
  end

  def destroy
    @evol_mednote = EvolMednote.find(params[:id])

    @evol_mednote.destroy

    if URI(request.referer).path == "/evol_mednotes/#{@evol_mednote.id}"
      redirect_to("/", :notice => "Nota eliminada.")
    else
      redirect_to(:back, :notice => "Nota eliminada.")
    end
  end
end
