Rails.application.routes.draw do

  #rotes for Analyitics
  # READ
  get "/analytics/brokers", :controller => "analytics", :action => "broker"
  get "/analytics/broker/:id", :controller => "analytics", :action => "broker_show"

  get "/analytics/doctors", :controller => "analytics", :action => "doctor"
  get "/analytics/doctor/:id", :controller => "analytics", :action => "doctor_show"


  # Routes for the Claim_event resource:
  # CREATE
  get "/claim_events/new", :controller => "claim_events", :action => "new"
  post "/create_claim_event", :controller => "claim_events", :action => "create"

  # READ
  get "/claim_events", :controller => "claim_events", :action => "index"
  get "/claim_events/:id", :controller => "claim_events", :action => "show"

  # UPDATE
  get "/claim_events/:id/edit", :controller => "claim_events", :action => "edit"
  post "/update_claim_event/:id", :controller => "claim_events", :action => "update"

  # DELETE
  get "/delete_claim_event/:id", :controller => "claim_events", :action => "destroy"
  #------------------------------

  # Routes for the Broker_insurer resource:
  # CREATE
  get "/broker_insurers/new", :controller => "broker_insurers", :action => "new"
  post "/create_broker_insurer", :controller => "broker_insurers", :action => "create"

  # READ
  get "/broker_insurers", :controller => "broker_insurers", :action => "index"
    get "/broker_insurers/:id", :controller => "broker_insurers", :action => "show"

  # UPDATE
  get "/broker_insurers/:id/edit", :controller => "broker_insurers", :action => "edit"
  post "/update_broker_insurer/:id", :controller => "broker_insurers", :action => "update"

  # DELETE
  get "/delete_broker_insurer/:id", :controller => "broker_insurers", :action => "destroy"
  #------------------------------

  # Routes for the Broker_credential resource:
  # CREATE
  get "/broker_credentials/new", :controller => "broker_credentials", :action => "new"
  get "/broker_credentials/new/:iid", :controller => "broker_credentials", :action => "new_spec"
  post "/create_broker_credential", :controller => "broker_credentials", :action => "create"

  # READ
  get "/broker_credentials", :controller => "broker_credentials", :action => "index"
  get "/directorio_agentes", :controller => "broker_credentials", :action => "directorio"
  get "/broker_credentials/:id", :controller => "broker_credentials", :action => "show"


  # UPDATE
  get "/broker_credentials/:id/edit", :controller => "broker_credentials", :action => "edit"
  post "/update_broker_credential/:id", :controller => "broker_credentials", :action => "update"

  # DELETE
  get "/delete_broker_credential/:id", :controller => "broker_credentials", :action => "destroy"
  #------------------------------

  # Routes for the Broker_relation resource:
  # CREATE
  get "/broker_relations/new", :controller => "broker_relations", :action => "new"
  post "/create_broker_relation", :controller => "broker_relations", :action => "create"

  # READ
  get "/broker_relations", :controller => "broker_relations", :action => "index"
  get "/conexiones_agente", :controller => "broker_relations", :action => "conexiones"
  get "/broker_relations/:id", :controller => "broker_relations", :action => "show"

  # UPDATE
  get "/broker_relations/:id/edit", :controller => "broker_relations", :action => "edit"
  post "/update_broker_relation/:id", :controller => "broker_relations", :action => "update"

  # DELETE
  get "/delete_broker_relation/:id", :controller => "broker_relations", :action => "destroy"
  #------------------------------

  # Routes for the Evol_mednote resource:
  # CREATE
  get "/evol_mednotes/new/:pid/:eid", :controller => "evol_mednotes", :action => "new"
  post "/create_evol_mednote", :controller => "evol_mednotes", :action => "create"

  # READ
  get "/evol_mednotes", :controller => "evol_mednotes", :action => "index"
  get "/evol_mednotes/:id", :controller => "evol_mednotes", :action => "show"

  # UPDATE
  get "/evol_mednotes/:id/edit", :controller => "evol_mednotes", :action => "edit"
  post "/update_evol_mednote/:id", :controller => "evol_mednotes", :action => "update"

  # DELETE
  get "/delete_evol_mednote/:id", :controller => "evol_mednotes", :action => "destroy"
  #------------------------------

  resources :attachments, only: [:index, :new, :create, :destroy, :show]
  get "/attachment/:id", :controller => "attachments", :action => "show"
  get "/attachment/new/:id", :controller => "attachments", :action => "new"


  # Routes for the Claim_follow resource:
  # CREATE
  get "/claim_follows/new", :controller => "claim_follows", :action => "new"
  post "/create_claim_follow", :controller => "claim_follows", :action => "create"

  # READ
  get "/claim_follows", :controller => "claim_follows", :action => "index"
  get "/claim_follows/:id", :controller => "claim_follows", :action => "show"

  # UPDATE
  get "/claim_follows/:id/edit", :controller => "claim_follows", :action => "edit"
  get "/claim_follows/:id/control", :controller => "claim_follows", :action => "approve"
  post "/update_claim_follow/:id", :controller => "claim_follows", :action => "update"

  # DELETE
  get "/delete_claim_follow/:id", :controller => "claim_follows", :action => "destroy"
  #------------------------------

  # Routes for the Blog resource:
  # CREATE
  get "/blogs/new", :controller => "blogs", :action => "new"
  post "/create_blog", :controller => "blogs", :action => "create"

  # READ
  get "/blogs", :controller => "blogs", :action => "index"
  get "/blogs/:id", :controller => "blogs", :action => "show"

  # UPDATE
  get "/blogs/:id/edit", :controller => "blogs", :action => "edit"
  post "/update_blog/:id", :controller => "blogs", :action => "update"

  # DELETE
  get "/delete_blog/:id", :controller => "blogs", :action => "destroy"
  #------------------------------

  # Routes for the Credential resource:


  # CREATE
  get "/credentials/new", :controller => "credentials", :action => "new"
  get "/credentials/new/:did", :controller => "credentials", :action => "new_spec"
  post "/create_credential", :controller => "credentials", :action => "create"

  # READ
  get "/credentials", :controller => "credentials", :action => "index"
  get "/credentials/:id", :controller => "credentials", :action => "show"

    #Public READ
    get "/public_credentials/:id", :controller => "credentials", :action => "show_public"

  # UPDATE
  get "/credentials/:id/edit", :controller => "credentials", :action => "edit"
  post "/update_credential/:id", :controller => "credentials", :action => "update"

  # DELETE
  get "/delete_credential/:id", :controller => "credentials", :action => "destroy"
  #------------------------------

  devise_for :insurers
  # Routes for the Other_background resource:
  # CREATE
  get "/other_backgrounds/new", :controller => "other_backgrounds", :action => "new"
  get "/other_backgrounds/new/:pid", :controller => "other_backgrounds", :action => "new_spec"
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
  get "/pregnancies/new/:pid", :controller => "pregancies", :action => "new_ spec"
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
  get "/surgicals/new/:pid", :controller => "surgicals", :action => "new_spec"
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
get "/historial_medico/doctor/:pid", :controller => "historial_medico", :action => "doctor_show"

  # Routes for the Non_pathological resource:
  # CREATE
  get "/non_pathologicals/new", :controller => "non_pathologicals", :action => "new"
  get "/non_pathologicals/new/:pid", :controller => "non_pathologicals", :action => "new_spec"
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
  get "/pathologicals/new/:pid", :controller => "pathologicals", :action => "new_spec"
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
  get "/claims/record", :controller => "claims", :action => "record"
  get "/claims/controlpanel", :controller => "claims", :action => "controlpanel"
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
  root to: "home#dashboard"
  get "/home/dashboard", :controller => "home", :action => "show"
  get "/home/contacto", :controller => "home", :action => "contact"

  # CREATE
  get "/medical_relations/new", :controller => "medical_relations", :action => "new"
  get "/medical_relations/search", :controller => "medical_relations", :action => "search"
  post "/create_medical_relation", :controller => "medical_relations", :action => "create"

  # READ
  get "/medical_relations", :controller => "medical_relations", :action => "index"
  get "/expediente/paciente", :controller => "medical_relations", :action => "indexpaciente"
  get "/medical_relations/:id", :controller => "medical_relations", :action => "show"

  # UPDATE
  get "/medical_relations/:id/edit", :controller => "medical_relations", :action => "edit"
  get "/medical_relations/:id/permission", :controller => "medical_relations", :action => "approve"
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

  get "doctor/search", :controller => "doctors", :action => "search"
  get "doctor/index/:pg", :controller => "doctors", :action => "index"
  get "doctors/:id", :controller => "doctors", :action => "read"
  get "doctors_profile/:id", :controller => "doctors", :action => "show"
  get "/delete_doctor/:id", :controller => "doctors", :action => "destroy"

  get "patients/:id", :controller => "patients", :action => "read"


end
