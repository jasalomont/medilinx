class SurgicalsController < ApplicationController
  def index
    @surgicals = Surgical.all

    render("historial_medico/surgicals/index.html.erb")
  end

  def show
    @surgical = Surgical.find(params[:id])

    render("historial_medico/surgicals/show.html.erb")
  end

  def new
    @surgical = Surgical.new

    render("historial_medico/surgicals/new.html.erb")
  end

  def new_spec
    @surgical = Surgical.new
    @patient = Patient.find(params[:pid])
    render("historial_medico/surgicals/new.html.erb")
  end


  def create
    @surgical = Surgical.new

    @surgical.patient_id = params[:patient_id]
    @surgical.name = params[:name]
    @surgical.date = params[:date]
    @surgical.doctor_id = params[:doctor_id]

    save_status = @surgical.save

    if save_status == true
      if current_doctor != nil
          redirect_to("/historial_medico/doctor/#{@surgical.patient_id}", :notice => "Registro creado exitosamente")
      else
        redirect_to("/historial_medico", :notice => "Registro creado exitosamente")
      end
    else
      render("historial_medico/surgicals/new.html.erb")
    end
  end

  def edit
    @surgical = Surgical.find(params[:id])

    render("historial_medico/surgicals/edit.html.erb")
  end

  def update
    @surgical = Surgical.find(params[:id])

    @surgical.patient_id = params[:patient_id]
    @surgical.name = params[:name]
    @surgical.date = params[:date]
    @surgical.doctor_id = params[:doctor_id]

    save_status = @surgical.save

    if save_status == true
      if current_doctor != nil
          redirect_to("/historial_medico/doctor/#{@surgical.patient_id}", :notice => "Registro creado exitosamente")
      else
        redirect_to("/historial_medico", :notice => "Registro creado exitosamente")
      end
    else
      render("historial_medico/surgicals/edit.html.erb")
    end
  end

  def destroy
    @surgical = Surgical.find(params[:id])

    @surgical.destroy

    if URI(request.referer).path == "/surgicals/#{@surgical.id}"
      redirect_to("/", :notice => "Surgical deleted.")
    else
      redirect_to(:back, :notice => "Surgical deleted.")
    end
  end
end
