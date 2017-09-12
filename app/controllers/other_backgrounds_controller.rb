class OtherBackgroundsController < ApplicationController
  def index
    @other_backgrounds = OtherBackground.all

    render("historial_medico/other_backgrounds/index.html.erb")
  end

  def show
    @other_background = OtherBackground.find(params[:id])

    render("historial_medico/other_backgrounds/show.html.erb")
  end

  def new
    @other_background = OtherBackground.new

    render("historial_medico/other_backgrounds/new.html.erb")
  end

  def new_spec
    @other_background = OtherBackground.new
    @patient = Patient.find(params[:pid])
    render("historial_medico/other_backgrounds/new.html.erb")
  end

  def create
    @other_background = OtherBackground.new

    @other_background.patient_id = params[:patient_id]
    @other_background.perinatal = params[:perinatal]
    @other_background.other = params[:other]
    @other_background.doctor_id = params[:doctor_id]

    save_status = @other_background.save

    if save_status == true
      if current_doctor != nil
        redirect_to("/historial_medico/doctor/#{@other_background.patient_id}", :notice => "Registro creado exitosamente")
      else
        redirect_to("/historial_medico", :notice => "Registro creado exitosamente")
      end
    else
      render("historial_medico/other_backgrounds/new.html.erb")
    end
  end

  def edit
    @other_background = OtherBackground.find(params[:id])

    render("historial_medico/other_backgrounds/edit.html.erb")
  end

  def update
    @other_background = OtherBackground.find(params[:id])

    @other_background.patient_id = params[:patient_id]
    @other_background.perinatal = params[:perinatal]
    @other_background.other = params[:other]
    @other_background.doctor_id = params[:doctor_id]

    save_status = @other_background.save

    if save_status == true
      if current_doctor != nil
        redirect_to("/historial_medico/doctor/#{@other_background.patient_id}", :notice => "Registro creado exitosamente")
      else
        redirect_to("/historial_medico", :notice => "Registro creado exitosamente")
      end
    else
      render("historial_medico/other_backgrounds/edit.html.erb")
    end
  end

  def destroy
    @other_background = OtherBackground.find(params[:id])

    @other_background.destroy

    if URI(request.referer).path == "/other_backgrounds/#{@other_background.id}"
      redirect_to("/", :notice => "Other background deleted.")
    else
      redirect_to(:back, :notice => "Other background deleted.")
    end
  end
end
