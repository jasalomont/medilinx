class ClaimsController < ApplicationController
  def index
    @claims = Claim.all
    @patients = Patient.all
    @claim = Claim.new

    render("claims/index.html.erb")
  end

  def record
    @claims = Claim.where("patient_id"=>current_patient.id)
    @claim = Claim.new
    @claim_follows = ClaimFollow.all
    @attachments = Attachment.all

    render("claims/record.html.erb")
  end

  def controlpanel
    @claims = Claim.where("insurance_name"=>current_insurer.insurance_name)
  @claim_follows = ClaimFollow.all


    render("claims/controlpanel.html.erb")
  end


  def show
    @claim = Claim.find(params[:id])
    @pathologicals = Pathological.where("patient_id"=>@claim.patient_id)
    @surgicals = Surgical.where("patient_id"=>@claim.patient_id)
    @non_pathologicals = NonPathological.where("patient_id"=>@claim.patient_id)
    @pregnancies = Pregnancy.where("patient_id"=>@claim.patient_id)
    @other_backgrounds = OtherBackground.where("patient_id"=>@claim.patient_id)
    @claim_follows = ClaimFollow.all
    @claim_follow = ClaimFollow.new

    render("claims/show.html.erb")
  end

  def new
    @claim = Claim.new

    render("claims/new.html.erb")
  end

  def create
    @claim = Claim.new

    @claim.doctor_id = params[:doctor_id]
    @claim.patient_id = params[:patient_id]
    @claim.claim_type = params[:claim_type]
    @claim.civil_status = params[:civil_status]
    @claim.attention_cause = params[:attention_cause]
    @claim.patient_name = params[:patient_name]
    @claim.doctor_name = params[:doctor_name]
    @claim.age = params[:age]
    @claim.gender = params[:gender]
    @claim.clinical_summary = params[:clinical_summary]
    @claim.referral_yn = params[:referral_yn]
    @claim.referral_doctor = params[:referral_doctor]
    @claim.referral_specialty = params[:referral_specialty]
    @claim.referral_phone = params[:referral_phone]
    @claim.symptoms = params[:symptoms]
    @claim.first_symptoms_date = params[:first_symptoms_date]
    @claim.first_consultation_date = params[:first_consultation_date]
    @claim.disease_type = params[:disease_type]
    @claim.relation_other_disease_yn = params[:relation_other_disease_yn]
    @claim.relation_other_disease = params[:relation_other_disease]
    @claim.evolution = params[:evolution]
    @claim.disease_cause = params[:disease_cause]
    @claim.origin_primary_yn = params[:origin_primary_yn]
    @claim.origin_primary_type = params[:origin_primary_type]
    @claim.lab_tests = params[:lab_tests]
    @claim.waiste_size = params[:waiste_size]
    @claim.weight = params[:weight]
    @claim.pressure = params[:pressure]
    @claim.physical_exploration_details = params[:physical_exploration_details]
    @claim.lab_studies_results = params[:lab_studies_results]
    @claim.form_accountable_name = params[:form_accountable_name]
    @claim.form_accountable_address = params[:form_accountable_address]
    @claim.purpose = params[:purpose]
    @claim.data_signature = params[:data_signature]
    @claim.cie_10 = params[:cie_10]
    @claim.definite_diagnose = params[:definite_diagnose]
    @claim.diagnose_date = params[:diagnose_date]
    @claim.cpt_4 = params[:cpt_4]
    @claim.tx_start = params[:tx_start]
    @claim.medicine_name = params[:medicine_name]
    @claim.medicine_dose = params[:medicine_dose]
    @claim.medicine_duration_number = params[:medicine_duration_number]
    @claim.medicine_duration_type = params[:medicine_duration_type]
    @claim.tx_other_name = params[:tx_other_name]
    @claim.tx_other_justification = params[:tx_other_justification]
    @claim.tx_other_days = params[:tx_other_days]
    @claim.tx_other_sessions = params[:tx_other_sessions]
    @claim.chemo_type = params[:chemo_type]
    @claim.chemo_sessions = params[:chemo_sessions]
    @claim.chemo_dose = params[:chemo_dose]
    @claim.chemo_intervals = params[:chemo_intervals]
    @claim.physical_rehab_days = params[:physical_rehab_days]
    @claim.physical_rehab_sessions = params[:physical_rehab_sessions]
    @claim.nursing_days = params[:nursing_days]
    @claim.nursing_hpd = params[:nursing_hpd]
    @claim.nursing_morning = params[:nursing_morning]
    @claim.nursing_evening = params[:nursing_evening]
    @claim.nursing_night = params[:nursing_night]
    @claim.nursing_24 = params[:nursing_24]
    @claim.tx_observations = params[:tx_observations]
    @claim.technique_description = params[:technique_description]
    @claim.special_equipment_yn = params[:special_equipment_yn]
    @claim.special_equipment_detail = params[:special_equipment_detail]
    @claim.procedure_mat_yn = params[:procedure_mat_yn]
    @claim.procedure_mat_detail = params[:procedure_mat_detail]
    @claim.procedure_mat_complications_yn = params[:procedure_mat_complications_yn]
    @claim.procedure_mat_complications_describe = params[:procedure_mat_complications_describe]
    @claim.list_other_doctors = params[:list_other_doctors]
    @claim.claim_staff_id = params[:claim_staff_id]
    @claim.inter_consultation_name = params[:inter_consultation_name]
    @claim.inter_consultation_specialty = params[:inter_consultation_specialty]
    @claim.inter_consultation_network_yn = params[:inter_consultation_network_yn]
    @claim.inter_consultation_dates = params[:inter_consultation_dates]
    @claim.inter_consultation_description = params[:inter_consultation_description]
    @claim.other_tx_other_doctor_yn = params[:other_tx_other_doctor_yn]
    @claim.other_tx_other_doctor_name = params[:other_tx_other_doctor_name]
    @claim.other_tx_other_doctor_specialty = params[:other_tx_other_doctor_specialty]
    @claim.patient_current_status = params[:patient_current_status]
    @claim.tx_continues_yn = params[:tx_continues_yn]
    @claim.tx_continues_type = params[:tx_continues_type]
    @claim.tx_continues_duration = params[:tx_continues_duration]
    @claim.tx_continues_doctors = params[:tx_continues_doctors]
    @claim.accident_description = params[:accident_description]
    @claim.discharge_date = params[:discharge_date]
    @claim.hospital_name = params[:hospital_name]
    @claim.hospital_city = params[:hospital_city]
    @claim.hospital_stay_type = params[:hospital_stay_type]
    @claim.surgery_performed = params[:surgery_performed]
    @claim.findings = params[:findings]
    @claim.hospital_admission_date = params[:hospital_admission_date]
    @claim.surgery_admission_date = params[:surgery_admission_date]
    @claim.hospital_discharge_date = params[:hospital_discharge_date]
    @claim.disability_caused_yn = params[:disability_caused_yn]
    @claim.disability_caused_type = params[:disability_caused_type]
    @claim.disability_caused_from = params[:disability_caused_from]
    @claim.disability_caused_until = params[:disability_caused_until]
    @claim.biopsy_yn = params[:biopsy_yn]
    @claim.doctor_specialty = params[:doctor_specialty]
    @claim.doctor_address = params[:doctor_address]
    @claim.doctor_cedula_pro = params[:doctor_cedula_pro]
    @claim.doctor_cedula_esp = params[:doctor_cedula_esp]
    @claim.doctor_rfc = params[:doctor_rfc]
    @claim.doctor_phone = params[:doctor_phone]
    @claim.doctor_email = params[:doctor_email]
    @claim.doctor_supplier_number = params[:doctor_supplier_number]
    @claim.budget_surgeon = params[:budget_surgeon]
    @claim.budget_assistants = params[:budget_assistants]
    @claim.budget_anesthesiologist = params[:budget_anesthesiologist]
    @claim.hospital_surgery_name = params[:hospital_surgery_name]
    @claim.hospital_entity = params[:hospital_entity]
    @claim.sugery_date = params[:sugery_date]
    @claim.doctor_signature = params[:doctor_signature]
    @claim.doctor_signature_place = params[:doctor_signature_place]
    @claim.doctor_signature_date = params[:doctor_signature_date]
    @claim.agreement_ins_yn = params[:agreement_ins_yn]
    @claim.identification_file = params[:identification_file]
    @claim.health_summary_id = params[:health_summary_id]
    @claim.insurance_name = params[:insurance_name]
    @claim.insurance_id = params[:insurance_id]
    @claim.tx_descritption = params[:tx_descritption]
    @claim.medicine_quantity = params[:medicine_quantity]
    @claim.event_id = params[:event_id]

    @claim.patient_request = params[:patient_request]
    @claim.patient_approved = params[:patient_approved]
    @claim.doctor_start = params[:doctor_start]
    @claim.doctor_sign = params[:doctor_sign]
    @claim.insurance_read = params[:insurance_read]
    @claim.insurance_approved = params[:insurance_approved]
    @claim.insurance_comments = params[:insurance_comments]


    save_status = @claim.save

    if save_status == true
      redirect_to("/claims/#{@claim.id}", :notice => "Claim created successfully.")
    else
      render("claims/new.html.erb")
    end
  end

  def edit
    @claim = Claim.find(params[:id])
    @pathologicals = Pathological.where("patient_id"=>@claim.patient_id)
    @surgicals = Surgical.where("patient_id"=>@claim.patient_id)
    @non_pathologicals = NonPathological.where("patient_id"=>@claim.patient_id)
    @pregnancies = Pregnancy.where("patient_id"=>@claim.patient_id)
    @other_backgrounds = OtherBackground.where("patient_id"=>@claim.patient_id)


    render("claims/edit.html.erb")
  end

  def update

    @claim = Claim.find(params[:id])


    @claim.doctor_id = params[:doctor_id]
    @claim.patient_id = params[:patient_id]
    @claim.claim_type = params[:claim_type]
    @claim.civil_status = params[:civil_status]
    @claim.attention_cause = params[:attention_cause]
    @claim.patient_name = params[:patient_name]
    @claim.doctor_name = params[:doctor_name]
    @claim.age = params[:age]
    @claim.gender = params[:gender]
    @claim.clinical_summary = params[:clinical_summary]
    @claim.referral_yn = params[:referral_yn]
    @claim.referral_doctor = params[:referral_doctor]
    @claim.referral_specialty = params[:referral_specialty]
    @claim.referral_phone = params[:referral_phone]
    @claim.symptoms = params[:symptoms]
    @claim.first_symptoms_date = params[:first_symptoms_date]
    @claim.first_consultation_date = params[:first_consultation_date]
    @claim.disease_type = params[:disease_type]
    @claim.relation_other_disease_yn = params[:relation_other_disease_yn]
    @claim.relation_other_disease = params[:relation_other_disease]
    @claim.evolution = params[:evolution]
    @claim.disease_cause = params[:disease_cause]
    @claim.origin_primary_yn = params[:origin_primary_yn]
    @claim.origin_primary_type = params[:origin_primary_type]
    @claim.lab_tests = params[:lab_tests]
    @claim.waiste_size = params[:waiste_size]
    @claim.weight = params[:weight]
    @claim.pressure = params[:pressure]
    @claim.physical_exploration_details = params[:physical_exploration_details]
    @claim.lab_studies_results = params[:lab_studies_results]
    @claim.form_accountable_name = params[:form_accountable_name]
    @claim.form_accountable_address = params[:form_accountable_address]
    @claim.purpose = params[:purpose]
    @claim.data_signature = params[:data_signature]
    @claim.cie_10 = params[:cie_10]
    @claim.definite_diagnose = params[:definite_diagnose]
    @claim.diagnose_date = params[:diagnose_date]
    @claim.cpt_4 = params[:cpt_4]
    @claim.tx_start = params[:tx_start]
    @claim.medicine_name = params[:medicine_name]
    @claim.medicine_dose = params[:medicine_dose]
    @claim.medicine_duration_number = params[:medicine_duration_number]
    @claim.medicine_duration_type = params[:medicine_duration_type]
    @claim.tx_other_name = params[:tx_other_name]
    @claim.tx_other_justification = params[:tx_other_justification]
    @claim.tx_other_days = params[:tx_other_days]
    @claim.tx_other_sessions = params[:tx_other_sessions]
    @claim.chemo_type = params[:chemo_type]
    @claim.chemo_sessions = params[:chemo_sessions]
    @claim.chemo_dose = params[:chemo_dose]
    @claim.chemo_intervals = params[:chemo_intervals]
    @claim.physical_rehab_days = params[:physical_rehab_days]
    @claim.physical_rehab_sessions = params[:physical_rehab_sessions]
    @claim.nursing_days = params[:nursing_days]
    @claim.nursing_hpd = params[:nursing_hpd]
    @claim.nursing_morning = params[:nursing_morning]
    @claim.nursing_evening = params[:nursing_evening]
    @claim.nursing_night = params[:nursing_night]
    @claim.nursing_24 = params[:nursing_24]
    @claim.tx_observations = params[:tx_observations]
    @claim.technique_description = params[:technique_description]
    @claim.special_equipment_yn = params[:special_equipment_yn]
    @claim.special_equipment_detail = params[:special_equipment_detail]
    @claim.procedure_mat_yn = params[:procedure_mat_yn]
    @claim.procedure_mat_detail = params[:procedure_mat_detail]
    @claim.procedure_mat_complications_yn = params[:procedure_mat_complications_yn]
    @claim.procedure_mat_complications_describe = params[:procedure_mat_complications_describe]
    @claim.list_other_doctors = params[:list_other_doctors]
    @claim.claim_staff_id = params[:claim_staff_id]
    @claim.inter_consultation_name = params[:inter_consultation_name]
    @claim.inter_consultation_specialty = params[:inter_consultation_specialty]
    @claim.inter_consultation_network_yn = params[:inter_consultation_network_yn]
    @claim.inter_consultation_dates = params[:inter_consultation_dates]
    @claim.inter_consultation_description = params[:inter_consultation_description]
    @claim.other_tx_other_doctor_yn = params[:other_tx_other_doctor_yn]
    @claim.other_tx_other_doctor_name = params[:other_tx_other_doctor_name]
    @claim.other_tx_other_doctor_specialty = params[:other_tx_other_doctor_specialty]
    @claim.patient_current_status = params[:patient_current_status]
    @claim.tx_continues_yn = params[:tx_continues_yn]
    @claim.tx_continues_type = params[:tx_continues_type]
    @claim.tx_continues_duration = params[:tx_continues_duration]
    @claim.tx_continues_doctors = params[:tx_continues_doctors]
    @claim.accident_description = params[:accident_description]
    @claim.discharge_date = params[:discharge_date]
    @claim.hospital_name = params[:hospital_name]
    @claim.hospital_city = params[:hospital_city]
    @claim.hospital_stay_type = params[:hospital_stay_type]
    @claim.surgery_performed = params[:surgery_performed]
    @claim.findings = params[:findings]
    @claim.hospital_admission_date = params[:hospital_admission_date]
    @claim.surgery_admission_date = params[:surgery_admission_date]
    @claim.hospital_discharge_date = params[:hospital_discharge_date]
    @claim.disability_caused_yn = params[:disability_caused_yn]
    @claim.disability_caused_type = params[:disability_caused_type]
    @claim.disability_caused_from = params[:disability_caused_from]
    @claim.disability_caused_until = params[:disability_caused_until]
    @claim.biopsy_yn = params[:biopsy_yn]
    @claim.doctor_specialty = params[:doctor_specialty]
    @claim.doctor_address = params[:doctor_address]
    @claim.doctor_cedula_pro = params[:doctor_cedula_pro]
    @claim.doctor_cedula_esp = params[:doctor_cedula_esp]
    @claim.doctor_rfc = params[:doctor_rfc]
    @claim.doctor_phone = params[:doctor_phone]
    @claim.doctor_email = params[:doctor_email]
    @claim.doctor_supplier_number = params[:doctor_supplier_number]
    @claim.budget_surgeon = params[:budget_surgeon]
    @claim.budget_assistants = params[:budget_assistants]
    @claim.budget_anesthesiologist = params[:budget_anesthesiologist]
    @claim.hospital_surgery_name = params[:hospital_surgery_name]
    @claim.hospital_entity = params[:hospital_entity]
    @claim.sugery_date = params[:sugery_date]
    @claim.doctor_signature = params[:doctor_signature]
    @claim.doctor_signature_place = params[:doctor_signature_place]
    @claim.doctor_signature_date = params[:doctor_signature_date]
    @claim.agreement_ins_yn = params[:agreement_ins_yn]
    @claim.identification_file = params[:identification_file]
    @claim.health_summary_id = params[:health_summary_id]
    @claim.insurance_name = params[:insurance_name]
    @claim.insurance_id = params[:insurance_id]
    @claim.tx_descritption = params[:tx_descritption]
    @claim.medicine_quantity = params[:medicine_quantity]
    @claim.event_id = params[:event_id]

    @claim.patient_request = params[:patient_request]
    @claim.patient_approved = params[:patient_approved]
    @claim.doctor_start = params[:doctor_start]
    @claim.doctor_sign = params[:doctor_sign]
    @claim.insurance_read = params[:insurance_read]
    @claim.insurance_approved = params[:insurance_approved]
    @claim.insurance_comments = params[:insurance_comments]

    save_status = @claim.save

    if save_status == true
      redirect_to("/claims/#{@claim.id}", :notice => "Claim updated successfully.")
    else
      render("claims/edit.html.erb")
    end
  end

  def destroy
    @claim = Claim.find(params[:id])

    @claim.destroy

    if URI(request.referer).path == "/claims/#{@claim.id}"
      redirect_to("/", :notice => "Claim deleted.")
    else
      redirect_to(:back, :notice => "Claim deleted.")
    end
  end
end
