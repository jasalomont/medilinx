class NonPathologicalsController < ApplicationController
  def index
    @non_pathologicals = NonPathological.all

    render("non_pathologicals/index.html.erb")
  end

  def show
    @non_pathological = NonPathological.find(params[:id])

    render("non_pathologicals/show.html.erb")
  end

  def new
    @non_pathological = NonPathological.new

    render("non_pathologicals/new.html.erb")
  end

  def create
    @non_pathological = NonPathological.new

    @non_pathological.drug_type = params[:drug_type]
    @non_pathological.quantity = params[:quantity]
    @non_pathological.patient_id = params[:patient_id]

    save_status = @non_pathological.save

    if save_status == true
      redirect_to("/historial_medico", :notice => "Non pathological created successfully.")
    else
      render("non_pathologicals/new.html.erb")
    end
  end

  def edit
    @non_pathological = NonPathological.find(params[:id])

    render("non_pathologicals/edit.html.erb")
  end

  def update
    @non_pathological = NonPathological.find(params[:id])

    @non_pathological.drug_type = params[:drug_type]
    @non_pathological.quantity = params[:quantity]
    @non_pathological.patient_id = params[:patient_id]

    save_status = @non_pathological.save

    if save_status == true
      redirect_to("/historial_medico", :notice => "Non pathological updated successfully.")
    else
      render("non_pathologicals/edit.html.erb")
    end
  end

  def destroy
    @non_pathological = NonPathological.find(params[:id])

    @non_pathological.destroy

    if URI(request.referer).path == "/non_pathologicals/#{@non_pathological.id}"
      redirect_to("/", :notice => "Non pathological deleted.")
    else
      redirect_to(:back, :notice => "Non pathological deleted.")
    end
  end
end
