class BrokerRelationsController < ApplicationController
  def index
    @broker_relations = BrokerRelation.all

    render("broker/broker_relations/index.html.erb")
  end

  def conexiones
    @broker_relations = BrokerRelation.where("insurer_id"=>current_insurer.id)

    render("broker/broker_relations/conexiones.html.erb")
  end

  def show
    @broker_relation = BrokerRelation.find(params[:id])

    render("broker/broker_relations/show.html.erb")
  end

  def new
    @broker_relation = BrokerRelation.new

    render("broker/broker_relations/new.html.erb")
  end

  def create
    @broker_relation = BrokerRelation.new

    @broker_relation.patient_id = params[:patient_id]
    @broker_relation.insurer_id = params[:insurer_id]
    @broker_relation.insurance_company = params[:insurance_company]
    @broker_relation.permission = params[:permission]
    @broker_relation.broker_notes = params[:broker_notes]
    @broker_relation.contract_code = params[:contract_code]

    save_status = @broker_relation.save

    if save_status == true
      redirect_to("/broker_relations", :notice => "Agente Agregado Exictosamente")
    else
      render("broker/broker_relations/new.html.erb")
    end
  end

  def edit
    @broker_relation = BrokerRelation.find(params[:id])

    render("broker/broker_relations/edit.html.erb")
  end

  def update
    @broker_relation = BrokerRelation.find(params[:id])

    @broker_relation.patient_id = params[:patient_id]
    @broker_relation.insurer_id = params[:insurer_id]
    @broker_relation.insurance_company = params[:insurance_company]
    @broker_relation.permission = params[:permission]
    @broker_relation.broker_notes = params[:broker_notes]
    @broker_relation.contract_code = params[:contract_code]

    save_status = @broker_relation.save

    if save_status == true
      redirect_to("/broker_relations/#{@broker_relation.id}", :notice => "Broker relation updated successfully.")
    else
      render("broker/broker_relations/edit.html.erb")
    end
  end

  def destroy
    @broker_relation = BrokerRelation.find(params[:id])

    @broker_relation.destroy

    if URI(request.referer).path == "/broker_relations/#{@broker_relation.id}"
      redirect_to("/", :notice => "Broker relation deleted.")
    else
      redirect_to(:back, :notice => "Broker relation deleted.")
    end
  end
end
