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

end
