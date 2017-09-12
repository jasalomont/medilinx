class HistorialMedicoController < ApplicationController

  def index

    @pathologicals = Pathological.where("patient_id"=>current_patient.id)
    @non_pathologicals = NonPathological.where("patient_id"=>current_patient.id)
    @pregnancies = Pregnancy.where("patient_id"=>current_patient.id)
    @pregnancy_size = Pregnancy.where("patient_id"=>current_patient.id).count
    @surgicals = Surgical.where("patient_id"=>current_patient.id)
    @other_backgrounds = OtherBackground.where("patient_id"=>current_patient.id)
    @other_backgrounds_size = OtherBackground.where("patient_id"=>current_patient.id).count

    render("historial_medico/index.html.erb")
  end

  def doctor_show
    @patient = Patient.find(params[:pid])
    @pathologicals = Pathological.where("patient_id"=>params[:pid])
    @non_pathologicals = NonPathological.where("patient_id"=>params[:pid])
    @pregnancies = Pregnancy.where("patient_id"=>params[:pid])
    @pregnancy_size = Pregnancy.where("patient_id"=>params[:pid]).count
    @surgicals = Surgical.where("patient_id"=>params[:pid])
    @other_backgrounds = OtherBackground.where("patient_id"=>params[:pid])
    @other_backgrounds_size = OtherBackground.where("patient_id"=>params[:pid]).count

    render("historial_medico/doctor.html.erb")
  end

end
