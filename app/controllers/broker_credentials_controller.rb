class BrokerCredentialsController < ApplicationController
  def index
    @broker_credentials = BrokerCredential.all

    render("broker/broker_credentials/index.html.erb")
  end

  def show
    @broker_credential = BrokerCredential.find(params[:id])

    render("broker/broker_credentials/show.html.erb")
  end

  def new
    @broker_credential = BrokerCredential.new

    render("broker/broker_credentials/new.html.erb")
  end

  def new_spec
    @broker_credential = BrokerCredential.new
    @broker = Insurer.find(params[:iid])
    render("broker/broker_credentials/new_spec.html.erb")
  end

  def create
    @broker_credential = BrokerCredential.new

    @broker_credential.phone_work = params[:phone_work]
    @broker_credential.address_work = params[:address_work]
    @broker_credential.city_work = params[:city_work]
    @broker_credential.zip_work = params[:zip_work]
    @broker_credential.state_work = params[:state_work]
    @broker_credential.country_work = params[:country_work]
    @broker_credential.phone_mobile = params[:phone_mobile]
    @broker_credential.practice_name = params[:practice_name]
    @broker_credential.company = params[:company]
    @broker_credential.insurer_id = params[:insurer_id]
    @broker_credential.photo = params[:photo]
    @broker_credential.job_title = params[:job_title]

    save_status = @broker_credential.save

    if save_status == true
      redirect_to("/broker_credentials/#{@broker_credential.id}", :notice => "Broker credential created successfully.")
    else
      render("broker/broker_credentials/new.html.erb")
    end
  end

  def edit
    @broker_credential = BrokerCredential.find(params[:id])

    render("broker/broker_credentials/edit.html.erb")
  end

  def update
    @broker_credential = BrokerCredential.find(params[:id])

    @broker_credential.phone_work = params[:phone_work]
    @broker_credential.address_work = params[:address_work]
    @broker_credential.city_work = params[:city_work]
    @broker_credential.zip_work = params[:zip_work]
    @broker_credential.state_work = params[:state_work]
    @broker_credential.country_work = params[:country_work]
    @broker_credential.phone_mobile = params[:phone_mobile]
    @broker_credential.practice_name = params[:practice_name]
    @broker_credential.company = params[:company]
    @broker_credential.insurer_id = params[:insurer_id]
    @broker_credential.photo = params[:photo]
    @broker_credential.job_title = params[:job_title]

    save_status = @broker_credential.save

    if save_status == true
      redirect_to("/broker_credentials/#{@broker_credential.id}", :notice => "Broker credential updated successfully.")
    else
      render("broker/broker_credentials/edit.html.erb")
    end
  end

  def destroy
    @broker_credential = BrokerCredential.find(params[:id])

    @broker_credential.destroy

    if URI(request.referer).path == "/broker_credentials/#{@broker_credential.id}"
      redirect_to("/", :notice => "Broker credential deleted.")
    else
      redirect_to(:back, :notice => "Broker credential deleted.")
    end
  end
end
