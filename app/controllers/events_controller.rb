class EventsController < ApplicationController
  def index

    @events = Event.all
    @q = Event.ransack(params[:q])
    @events = @q.result

    render("events/index.html.erb")
  end

  def show

    @event = Event.find(params[:id])

    render("events/show.html.erb")
  end

  def new
    @event = Event.new


    render("events/new.html.erb")
  end

  def create
    @event = Event.new

    @event.patient_id = params[:patient_id]
    @event.doctor_id = params[:doctor_id]
    @event.diagnose = params[:diagnose]
    @event.weight = params[:weight]
    @event.treatment = params[:treatment]
    @event.encounter_type = params[:encounter_type]

    save_status = @event.save

    if save_status == true
      redirect_to :back, :notice => "Encuentro Creado Exitosamente."
    else
      redirect_to :back,:notice => "Se requiere definir un tipo de encuentro"
    end
  end

  def edit
    @event = Event.find(params[:id])

    render("events/edit.html.erb")
  end

  def update
    @event = Event.find(params[:id])

    @event.patient_id = params[:patient_id]
    @event.doctor_id = params[:doctor_id]
    @event.diagnose = params[:diagnose]
    @event.weight = params[:weight]
    @event.treatment = params[:treatment]
    @event.encounter_type = params[:encounter_type]

    save_status = @event.save

    if save_status == true
      redirect_to("/events/#{@event.id}", :notice => "Event updated successfully.")
    else
      render("events/edit.html.erb")
    end
  end

  def destroy
    @event = Event.find(params[:id])
    pat = @event.patient_id
    @event.destroy

    medrel = MedicalRelation.where("patient_id"=>pat).first
    relid = medrel.id

    if URI(request.referer).path == "/events/#{@event.id}"
      redirect_to("/medical_relations/#{relid}", :notice => "Event deleted.")
    else
      redirect_to(:back, :notice => "Registro eliminado.")
    end
  end
end
