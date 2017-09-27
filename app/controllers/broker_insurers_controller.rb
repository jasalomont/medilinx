class BrokerInsurersController < ApplicationController
  def index
    @broker_insurers = BrokerInsurer.all

    render("broker/broker_insurers/index.html.erb")
  end

  def show
    @broker_insurer = BrokerInsurer.find(params[:id])

    render("broker/broker_insurers/show.html.erb")
  end

  def new
    @broker_insurer = BrokerInsurer.new

    render("broker/broker_insurers/new.html.erb")
  end

  def create
    @broker_insurer = BrokerInsurer.new

    @broker_insurer.insurer_id = params[:insurer_id]
    @broker_insurer.company_name = params[:company_name]
    @broker_insurer.relation_type = params[:relation_type]

    save_status = @broker_insurer.save

    if save_status == true
      redirect_to("/broker_insurers/#{@broker_insurer.id}", :notice => "Broker insurer created successfully.")
    else
      render("broker/broker_insurers/new.html.erb")
    end
  end

  def edit
    @broker_insurer = BrokerInsurer.find(params[:id])

    render("broker/broker_insurers/edit.html.erb")
  end

  def update
    @broker_insurer = BrokerInsurer.find(params[:id])

    @broker_insurer.insurer_id = params[:insurer_id]
    @broker_insurer.company_name = params[:company_name]
    @broker_insurer.relation_type = params[:relation_type]

    save_status = @broker_insurer.save

    if save_status == true
      redirect_to("/broker_insurers/#{@broker_insurer.id}", :notice => "Broker insurer updated successfully.")
    else
      render("broker/broker_insurers/edit.html.erb")
    end
  end

  def destroy
    @broker_insurer = BrokerInsurer.find(params[:id])

    @broker_insurer.destroy

    if URI(request.referer).path == "/broker_insurers/#{@broker_insurer.id}"
      redirect_to("/", :notice => "Broker insurer deleted.")
    else
      redirect_to(:back, :notice => "Broker insurer deleted.")
    end
  end
end
