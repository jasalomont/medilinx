Rails.application.routes.draw do

  # Routes for the Other_background resource:
  # CREATE
  get "/other_backgrounds/new", :controller => "other_backgrounds", :action => "new"
  post "/create_other_background", :controller => "other_backgrounds", :action => "create"

  # READ
  get "/other_backgrounds", :controller => "other_backgrounds", :action => "index"
  get "/other_backgrounds/:id", :controller => "other_backgrounds", :action => "show"

  # UPDATE
  get "/other_backgrounds/:id/edit", :controller => "other_backgrounds", :action => "edit"
  post "/update_other_background/:id", :controller => "other_backgrounds", :action => "update"

  # DELETE
  get "/delete_other_background/:id", :controller => "other_backgrounds", :action => "destroy"
  #------------------------------

  # Routes for the Pregnancy resource:
  # CREATE
  get "/pregnancies/new", :controller => "pregnancies", :action => "new"
  post "/create_pregnancy", :controller => "pregnancies", :action => "create"

  # READ
  get "/pregnancies", :controller => "pregnancies", :action => "index"
  get "/pregnancies/:id", :controller => "pregnancies", :action => "show"

  # UPDATE
  get "/pregnancies/:id/edit", :controller => "pregnancies", :action => "edit"
  post "/update_pregnancy/:id", :controller => "pregnancies", :action => "update"

  # DELETE
  get "/delete_pregnancy/:id", :controller => "pregnancies", :action => "destroy"
  #------------------------------

  # Routes for the Surgical resource:
  # CREATE
  get "/surgicals/new", :controller => "surgicals", :action => "new"
  post "/create_surgical", :controller => "surgicals", :action => "create"

  # READ
  get "/surgicals", :controller => "surgicals", :action => "index"
  get "/surgicals/:id", :controller => "surgicals", :action => "show"

  # UPDATE
  get "/surgicals/:id/edit", :controller => "surgicals", :action => "edit"
  post "/update_surgical/:id", :controller => "surgicals", :action => "update"

  # DELETE
  get "/delete_surgical/:id", :controller => "surgicals", :action => "destroy"
  #------------------------------

# Routes for the Medical History:
get "/historial_medico", :controller => "historial_medico", :action => "index"

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
