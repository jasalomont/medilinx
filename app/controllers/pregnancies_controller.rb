class PregnanciesController < ApplicationController
  def index
    @pregnancies = Pregnancy.all

    render("pregnancies/index.html.erb")
  end

  def show
    @pregnancy = Pregnancy.find(params[:id])

    render("pregnancies/show.html.erb")
  end

  def new
    @pregnancy = Pregnancy.new

    render("pregnancies/new.html.erb")
  end

  def create
    @pregnancy = Pregnancy.new

    @pregnancy.patient_id = params[:patient_id]
    @pregnancy.fum = params[:fum]
    @pregnancy.number = params[:number]
    @pregnancy.abortion = params[:abortion]
    @pregnancy.caesarean = params[:caesarean]
    @pregnancy.normal = params[:normal]

    save_status = @pregnancy.save

    if save_status == true
      redirect_to("/pregnancies/#{@pregnancy.id}", :notice => "Pregnancy created successfully.")
    else
      render("pregnancies/new.html.erb")
    end
  end

  def edit
    @pregnancy = Pregnancy.find(params[:id])

    render("pregnancies/edit.html.erb")
  end

  def update
    @pregnancy = Pregnancy.find(params[:id])

    @pregnancy.patient_id = params[:patient_id]
    @pregnancy.fum = params[:fum]
    @pregnancy.number = params[:number]
    @pregnancy.abortion = params[:abortion]
    @pregnancy.caesarean = params[:caesarean]
    @pregnancy.normal = params[:normal]

    save_status = @pregnancy.save

    if save_status == true
      redirect_to("/historial_medico", :notice => "updated successfully")
    else
      render("pregnancies/edit.html.erb")
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
