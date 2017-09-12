class PathologicalsController < ApplicationController
  def index
    @pathologicals = Pathological.all

    render("historial_medico/pathologicals/index.html.erb")
  end

  def show
    @pathological = Pathological.find(params[:id])

    render("historial_medico/pathologicals/show.html.erb")
  end

  def new
    @pathological = Pathological.new

    render("historial_medico/pathologicals/new.html.erb")
  end

  def new_spec
    @pathological = Pathological.new
    @patient = Patient.find(params[:pid])
    render("historial_medico/pathologicals/new.html.erb")
  end

  def create
    @pathological = Pathological.new

    @pathological.patient_id = params[:patient_id]
    @pathological.disease = params[:disease]
    @pathological.start_date = params[:start_date]
    @pathological.doctor_id = params[:doctor_id]

    save_status = @pathological.save

    if save_status == true
        redirect_to("/historial_medico/doctor/#{@pathological.patient_id}", :notice => "Registro creado exitosamente")
    else
      render("historial_medico/pathologicals/new.html.erb")
    end
  end

  def edit
    @pathological = Pathological.find(params[:id])

    render("historial_medico/pathologicals/edit.html.erb")
  end

  def update
    @pathological = Pathological.find(params[:id])

    @pathological.patient_id = params[:patient_id]
    @pathological.disease = params[:disease]
    @pathological.start_date = params[:start_date]
    @pathological.doctor_id = params[:doctor_id]

    save_status = @pathological.save

    if save_status == true
      if current_doctor != nil
        redirect_to("/historial_medico/doctor/#{@pathological.patient_id}", :notice => "Registro creado exitosamente")
      else
        redirect_to("/historial_medico", :notice => "Registro creado exitosamente")
      end
    else
      render("historial_medico/pathologicals/edit.html.erb")
    end
  end

  def destroy
    @pathological = Pathological.find(params[:id])

    @pathological.destroy

    if URI(request.referer).path == "/pathologicals/#{@pathological.id}"
      redirect_to("/", :notice => "Registro Eliminado.")
    else
      redirect_to(:back, :notice => "Registro Eliminado.")
    end
  end
end
