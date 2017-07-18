class CredentialsController < ApplicationController
  def index
    @credentials = Credential.all

    render("credentials/index.html.erb")
  end

  def show
    @credential = Credential.find(params[:id])

    render("credentials/show.html.erb")
  end

  def new
    @credential = Credential.new

    render("credentials/new.html.erb")
  end

  def create
    @credential = Credential.new

    @credential.practice = params[:practice]
    @credential.school = params[:school]
    @credential.doctor_id = params[:doctor_id]
    @credential.rfc = params[:rfc]
    @credential.curp = params[:curp]
    @credential.expertise = params[:expertise]
    @credential.cedula_pro = params[:cedula_pro]
    @credential.languages = params[:languages]
    @credential.about_me = params[:about_me]
    @credential.photo = params[:photo]
    @credential.cedula_esp = params[:cedula_esp]

    save_status = @credential.save

    if save_status == true
      redirect_to("/credentials/#{@credential.id}", :notice => "Credential created successfully.")
    else
      render("credentials/new.html.erb")
    end
  end

  def edit
    @credential = Credential.find(params[:id])

    render("credentials/edit.html.erb")
  end

  def update
    @credential = Credential.find(params[:id])

    @credential.practice = params[:practice]
    @credential.school = params[:school]
    @credential.doctor_id = params[:doctor_id]
    @credential.rfc = params[:rfc]
    @credential.curp = params[:curp]
    @credential.expertise = params[:expertise]
    @credential.cedula_pro = params[:cedula_pro]
    @credential.languages = params[:languages]
    @credential.about_me = params[:about_me]
    @credential.photo = params[:photo]
    @credential.cedula_esp = params[:cedula_esp]

    save_status = @credential.save

    if save_status == true
      redirect_to("/credentials/#{@credential.id}", :notice => "Credential updated successfully.")
    else
      render("credentials/edit.html.erb")
    end
  end

  def destroy
    @credential = Credential.find(params[:id])

    @credential.destroy

    if URI(request.referer).path == "/credentials/#{@credential.id}"
      redirect_to("/", :notice => "Credential deleted.")
    else
      redirect_to(:back, :notice => "Credential deleted.")
    end
  end
end
