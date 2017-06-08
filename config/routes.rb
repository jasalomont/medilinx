Rails.application.routes.draw do
  # Routes for the Office_profile resource:
  # CREATE
  get "/office_profiles/new", :controller => "office_profiles", :action => "new"
  post "/create_office_profile", :controller => "office_profiles", :action => "create"

  # READ
  get "/office_profiles", :controller => "office_profiles", :action => "index"
  get "/office_profiles/:id", :controller => "office_profiles", :action => "show"

  # UPDATE
  get "/office_profiles/:id/edit", :controller => "office_profiles", :action => "edit"
  post "/update_office_profile/:id", :controller => "office_profiles", :action => "update"

  # DELETE
  get "/delete_office_profile/:id", :controller => "office_profiles", :action => "destroy"
  #------------------------------

  # Routes for the Medical_relation resource:
  root to: "medical_relations#index"

  # CREATE
  get "/medical_relations/new", :controller => "medical_relations", :action => "new"
  post "/create_medical_relation", :controller => "medical_relations", :action => "create"

  # READ
  get "/medical_relations", :controller => "medical_relations", :action => "index"
  get "/medical_relations/:id", :controller => "medical_relations", :action => "show"

  # UPDATE
  get "/medical_relations/:id/edit", :controller => "medical_relations", :action => "edit"
  post "/update_medical_relation/:id", :controller => "medical_relations", :action => "update"

  # DELETE
  get "/delete_medical_relation/:id", :controller => "medical_relations", :action => "destroy"
  #------------------------------

  devise_for :patients
  devise_for :doctors
  # Routes for the Patient_profile resource:
  # CREATE
  get "/patient_profiles/new", :controller => "patient_profiles", :action => "new"
  post "/create_patient_profile", :controller => "patient_profiles", :action => "create"

  # READ
  get "/patient_profiles", :controller => "patient_profiles", :action => "index"
  get "/patient_profiles/:id", :controller => "patient_profiles", :action => "show"

  # UPDATE
  get "/patient_profiles/:id/edit", :controller => "patient_profiles", :action => "edit"
  post "/update_patient_profile/:id", :controller => "patient_profiles", :action => "update"

  # DELETE
  get "/delete_patient_profile/:id", :controller => "patient_profiles", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # get "/medilinx", => redirect("https://www.medilinx.net/)

    #READ
  
  get "doctors/:id", :controller => "doctors", :action => "read"
  get "patients/:id", :controller => "patients", :action => "read"
end
