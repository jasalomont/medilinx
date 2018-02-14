class ClaimEventsController < ApplicationController
  def index
    @claim_events = ClaimEvent.all

    render("claim_events/index.html.erb")
  end

  def show
    @claim_event = ClaimEvent.find(params[:id])

    render("claim_events/show.html.erb")
  end

  def new
    @claim_event = ClaimEvent.new

    render("claim_events/new.html.erb")
  end

  def create
    @claim_event = ClaimEvent.new

    @claim_event.patient_id = params[:patient_id]
    @claim_event.insurer_id = params[:insurer_id]
    @claim_event.insurance_name = params[:insurance_name]
    @claim_event.permission = params[:permission]

    save_status = @claim_event.save

    if save_status == true
      redirect_to("/claims/record", :notice => "Registro creado exitosamente.")
    else
      render("claim_events/new.html.erb")
    end
  end

  def edit
    @claim_event = ClaimEvent.find(params[:id])

    render("claim_events/edit.html.erb")
  end

  def update
    @claim_event = ClaimEvent.find(params[:id])

    @claim_event.patient_id = params[:patient_id]
    @claim_event.insurer_id = params[:insurer_id]
    @claim_event.insurance_name = params[:insurance_name]
    @claim_event.permission = params[:permission]

    save_status = @claim_event.save

    if save_status == true
      redirect_to("/claim_events/#{@claim_event.id}", :notice => "Claim event updated successfully.")
    else
      render("claim_events/edit.html.erb")
    end
  end

  def destroy
    @claim_event = ClaimEvent.find(params[:id])

    @claim_event.destroy

    if URI(request.referer).path == "/claim_events/#{@claim_event.id}"
      redirect_to("/", :notice => "Claim event deleted.")
    else
      redirect_to(:back, :notice => "Claim event deleted.")
    end
  end
end
