class SurgicalsController < ApplicationController
  def index
    @surgicals = Surgical.all

    render("surgicals/index.html.erb")
  end

  def show
    @surgical = Surgical.find(params[:id])

    render("surgicals/show.html.erb")
  end

  def new
    @surgical = Surgical.new

    render("surgicals/new.html.erb")
  end

  def create
    @surgical = Surgical.new

    @surgical.patient_id = params[:patient_id]
    @surgical.name = params[:name]
    @surgical.date = params[:date]

    save_status = @surgical.save

    if save_status == true
      redirect_to("/surgicals/#{@surgical.id}", :notice => "Surgical created successfully.")
    else
      render("surgicals/new.html.erb")
    end
  end

  def edit
    @surgical = Surgical.find(params[:id])

    render("surgicals/edit.html.erb")
  end

  def update
    @surgical = Surgical.find(params[:id])

    @surgical.patient_id = params[:patient_id]
    @surgical.name = params[:name]
    @surgical.date = params[:date]

    save_status = @surgical.save

    if save_status == true
      redirect_to("/surgicals/#{@surgical.id}", :notice => "Surgical updated successfully.")
    else
      render("surgicals/edit.html.erb")
    end
  end

  def destroy
    @surgical = Surgical.find(params[:id])

    @surgical.destroy

    if URI(request.referer).path == "/surgicals/#{@surgical.id}"
      redirect_to("/", :notice => "Surgical deleted.")
    else
      redirect_to(:back, :notice => "Surgical deleted.")
    end
  end
end
