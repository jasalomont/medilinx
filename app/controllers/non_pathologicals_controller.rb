class NonPathologicalsController < ApplicationController
  def index
    @non_pathologicals = NonPathological.all

    render("historial_medico/non_pathologicals/index.html.erb")
  end

  def show
    @non_pathological = NonPathological.find(params[:id])

    render("historial_medico/non_pathologicals/show.html.erb")
  end

  def new
    @non_pathological = NonPathological.new

    render("historial_medico/non_pathologicals/new.html.erb")
  end

  def new_spec
    @non_pathological = NonPathological.new
    @patient = Patient.find(params[:pid])
    render("historial_medico/non_pathologicals/new.html.erb")
  end


  def create
    @non_pathological = NonPathological.new

    @non_pathological.drug_type = params[:drug_type]
    @non_pathological.quantity = params[:quantity]
    @non_pathological.patient_id = params[:patient_id]
    @non_pathological.doctor_id = params[:doctor_id]

    save_status = @non_pathological.save

    if save_status == true
      if current_doctor != nil
        redirect_to("/historial_medico/doctor/#{@non_pathological.patient_id}", :notice => "Non pathological created successfully.")
      else
        redirect_to("/historial_medico", :notice => "Non pathological created successfully.")
      end
    else
      render("historial_medico/non_pathologicals/new.html.erb")
    end
  end

  def edit
    @non_pathological = NonPathological.find(params[:id])

    render("historial_medico/non_pathologicals/edit.html.erb")
  end

  def update
    @non_pathological = NonPathological.find(params[:id])

    @non_pathological.drug_type = params[:drug_type]
    @non_pathological.quantity = params[:quantity]
    @non_pathological.patient_id = params[:patient_id]

    save_status = @non_pathological.save

    if save_status == true
      if current_doctor != nil
        redirect_to("/historial_medico/doctor/#{@non_pathological.patient_id}", :notice => "Non pathological created successfully.")
      else
        redirect_to("/historial_medico", :notice => "Non pathological created successfully.")
      end
    else
      render("historial_medico/non_pathologicals/edit.html.erb")
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
