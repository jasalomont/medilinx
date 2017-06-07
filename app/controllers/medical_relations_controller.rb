class MedicalRelationsController < ApplicationController
  def index
    @medical_relations = MedicalRelation.all

    render("medical_relations/index.html.erb")
  end

  def show
    @medical_relation = MedicalRelation.find(params[:id])

    render("medical_relations/show.html.erb")
  end

  def new
    @medical_relation = MedicalRelation.new

    render("medical_relations/new.html.erb")
  end

  def create
    @medical_relation = MedicalRelation.new

    @medical_relation.doctor_id = params[:doctor_id]
    @medical_relation.patient_id = params[:patient_id]

    save_status = @medical_relation.save

    if save_status == true
      redirect_to("/medical_relations/#{@medical_relation.id}", :notice => "Medical relation created successfully.")
    else
      render("medical_relations/new.html.erb")
    end
  end

  def edit
    @medical_relation = MedicalRelation.find(params[:id])

    render("medical_relations/edit.html.erb")
  end

  def update
    @medical_relation = MedicalRelation.find(params[:id])

    @medical_relation.doctor_id = params[:doctor_id]
    @medical_relation.patient_id = params[:patient_id]

    save_status = @medical_relation.save

    if save_status == true
      redirect_to("/medical_relations/#{@medical_relation.id}", :notice => "Medical relation updated successfully.")
    else
      render("medical_relations/edit.html.erb")
    end
  end

  def destroy
    @medical_relation = MedicalRelation.find(params[:id])

    @medical_relation.destroy

    if URI(request.referer).path == "/medical_relations/#{@medical_relation.id}"
      redirect_to("/", :notice => "Medical relation deleted.")
    else
      redirect_to(:back, :notice => "Medical relation deleted.")
    end
  end
end
