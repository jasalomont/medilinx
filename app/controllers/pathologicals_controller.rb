class PathologicalsController < ApplicationController
  def index
    @pathologicals = Pathological.all

    render("pathologicals/index.html.erb")
  end

  def show
    @pathological = Pathological.find(params[:id])

    render("pathologicals/show.html.erb")
  end

  def new
    @pathological = Pathological.new

    render("pathologicals/new.html.erb")
  end

  def create
    @pathological = Pathological.new

    @pathological.patient_id = params[:patient_id]
    @pathological.disease = params[:disease]
    @pathological.start_date = params[:start_date]

    save_status = @pathological.save

    if save_status == true
      redirect_to("/pathologicals/#{@pathological.id}", :notice => "Pathological created successfully.")
    else
      render("pathologicals/new.html.erb")
    end
  end

  def edit
    @pathological = Pathological.find(params[:id])

    render("pathologicals/edit.html.erb")
  end

  def update
    @pathological = Pathological.find(params[:id])

    @pathological.patient_id = params[:patient_id]
    @pathological.disease = params[:disease]
    @pathological.start_date = params[:start_date]

    save_status = @pathological.save

    if save_status == true
      redirect_to("/pathologicals/#{@pathological.id}", :notice => "Pathological updated successfully.")
    else
      render("pathologicals/edit.html.erb")
    end
  end

  def destroy
    @pathological = Pathological.find(params[:id])

    @pathological.destroy

    if URI(request.referer).path == "/pathologicals/#{@pathological.id}"
      redirect_to("/", :notice => "Pathological deleted.")
    else
      redirect_to(:back, :notice => "Pathological deleted.")
    end
  end
end
