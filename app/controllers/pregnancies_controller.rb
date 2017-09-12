class PregnanciesController < ApplicationController
  def index
    @pregnancies = Pregnancy.all

    render("historial_medico/pregnancies/index.html.erb")
  end

  def show
    @pregnancy = Pregnancy.find(params[:id])

    render("historial_medico/pregnancies/show.html.erb")
  end

  def new
    @pregnancy = Pregnancy.new

    render("historial_medico/pregnancies/new.html.erb")
  end

  def create
    @pregnancy = Pregnancy.new

    @pregnancy.patient_id = params[:patient_id]
    @pregnancy.fum = params[:fum]
    @pregnancy.number = params[:number]
    @pregnancy.abortion = params[:abortion]
    @pregnancy.caesarean = params[:caesarean]
    @pregnancy.normal = params[:normal]
    @pregnancy.doctor_id = params[:doctor_id]

    save_status = @pregnancy.save

    if save_status == true
      if current_doctor != nil
        redirect_to("/historial_medico/doctor/#{@pregnancy.patient_id}", :notice => "Registro creado exitosamente")
      else
        redirect_to("/historial_medico", :notice => "Registro creado exitosamente")
      end
    else
      render("historial_medico/pregnancies/new.html.erb")
    end
  end

  def edit
    @pregnancy = Pregnancy.find(params[:id])

    render("historial_medico/pregnancies/edit.html.erb")
  end

  def update
    @pregnancy = Pregnancy.find(params[:id])

    @pregnancy.patient_id = params[:patient_id]
    @pregnancy.fum = params[:fum]
    @pregnancy.number = params[:number]
    @pregnancy.abortion = params[:abortion]
    @pregnancy.caesarean = params[:caesarean]
    @pregnancy.normal = params[:normal]
    @pregnancy.doctor_id = params[:doctor_id]

    save_status = @pregnancy.save

    if save_status == true
      if current_doctor != nil
        redirect_to("/historial_medico/doctor/#{@pregnancy.patient_id}", :notice => "Registro creado exitosamente")
      else
        redirect_to("/historial_medico", :notice => "Registro creado exitosamente")
      end
    else
      render("historial_medico/pregnancies/edit.html.erb")
    end
  end

  def destroy
    @pregnancy = Pregnancy.find(params[:id])

    @pregnancy.destroy

    if URI(request.referer).path == "/pregnancies/#{@pregnancy.id}"
      redirect_to("/", :notice => "Pregnancy deleted.")
    else
      redirect_to(:back, :notice => "Pregnancy deleted.")
    end
  end
end
