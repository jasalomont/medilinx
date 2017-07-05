Rails.application.routes.draw do

# Routes for the Medical History:
get "/historial _medico", :controller => "historial", :action => "index"

  # Routes for the Non_pathological resource:
  # CREATE
  get "/non_pathologicals/new", :controller => "non_pathologicals", :action => "new"
  post "/create_non_pathological", :controller => "non_pathologicals", :action => "create"

  # READ
  get "/non_pathologicals", :controller => "non_pathologicals", :action => "index"
  get "/non_pathologicals/:id", :controller => "non_pathologicals", :action => "show"

  # UPDATE
  get "/non_pathologicals/:id/edit", :controller => "non_pathologicals", :action => "edit"
  post "/update_non_pathological/:id", :controller => "non_pathologicals", :action => "update"

  # DELETE
  get "/delete_non_pathological/:id", :controller => "non_pathologicals", :action => "destroy"
  #------------------------------

  # Routes for the Pathological resource:
  # CREATE
  get "/pathologicals/new", :controller => "pathologicals", :action => "new"
  post "/create_pathological", :controller => "pathologicals", :action => "create"

  # READ
  get "/pathologicals", :controller => "pathologicals", :action => "index"
  get "/pathologicals/:id", :controller => "pathologicals", :action => "show"

  # UPDATE
  get "/pathologicals/:id/edit", :controller => "pathologicals", :action => "edit"
  post "/update_pathological/:id", :controller => "pathologicals", :action => "update"

  # DELETE
  get "/delete_pathological/:id", :controller => "pathologicals", :action => "destroy"
  #------------------------------

  # Routes for the Claim resource:
  # CREATE
  get "/claims/new", :controller => "claims", :action => "new"
  post "/create_claim", :controller => "claims", :action => "create"

  # READ
  get "/claims", :controller => "claims", :action => "index"
  get "/claims/:id", :controller => "claims", :action => "show"

  # UPDATE
  get "/claims/:id/edit", :controller => "claims", :action => "edit"
  post "/update_claim/:id", :controller => "claims", :action => "update"

  # DELETE
  get "/delete_claim/:id", :controller => "claims", :action => "destroy"
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get "/events/new", :controller => "events", :action => "new"
  post "/create_event", :controller => "events", :action => "create"

  # READ
  get "/events", :controller => "events", :action => "index"
  get "/events/:id", :controller => "events", :action => "show"

  # UPDATE
  get "/events/:id/edit", :controller => "events", :action => "edit"
  post "/update_event/:id", :controller => "events", :action => "update"

  # DELETE
  get "/delete_event/:id", :controller => "events", :action => "destroy"
  #------------------------------

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
