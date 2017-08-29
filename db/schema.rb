# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170829192016) do

  create_table "attachments", force: :cascade do |t|
    t.string   "name"
    t.string   "attachment"
    t.string   "type"
    t.integer  "claim_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.date     "post_date"
    t.text     "post_content"
    t.string   "post_status"
    t.string   "post_type"
    t.integer  "post_like_count"
    t.integer  "post_comment_count"
    t.boolean  "post_has_article"
    t.text     "article_title"
    t.text     "article_content"
    t.text     "article_references"
    t.string   "post_author"
    t.integer  "author_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "claim_follows", force: :cascade do |t|
    t.boolean  "patient_request"
    t.boolean  "doctor_start"
    t.boolean  "doctor_sign"
    t.boolean  "insurance_read"
    t.boolean  "insurance_approved"
    t.text     "insurance_comments"
    t.integer  "claim_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "doctor_email"
    t.integer  "patient_id"
    t.integer  "insurer_id"
  end

  create_table "claims", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.string   "claim_type"
    t.string   "civil_status"
    t.string   "attention_cause"
    t.string   "patient_name"
    t.string   "doctor_name"
    t.integer  "age"
    t.string   "gender"
    t.string   "clinical_summary"
    t.boolean  "referral_yn"
    t.string   "referral_doctor"
    t.string   "referral_specialty"
    t.integer  "referral_phone"
    t.string   "symptoms"
    t.date     "first_symptoms_date"
    t.date     "first_consultation_date"
    t.string   "disease_type"
    t.boolean  "relation_other_disease_yn"
    t.string   "relation_other_disease"
    t.string   "evolution"
    t.string   "disease_cause"
    t.boolean  "origin_primary_yn"
    t.string   "origin_primary_type"
    t.string   "lab_tests"
    t.float    "waiste_size"
    t.float    "weight"
    t.float    "pressure"
    t.string   "physical_exploration_details"
    t.string   "lab_studies_results"
    t.string   "form_accountable_name"
    t.string   "form_accountable_address"
    t.string   "purpose"
    t.string   "data_signature"
    t.string   "cie_10"
    t.string   "definite_diagnose"
    t.date     "diagnose_date"
    t.string   "cpt_4"
    t.date     "tx_start"
    t.string   "medicine_name"
    t.integer  "medicine_dose"
    t.integer  "medicine_duration_number"
    t.string   "medicine_duration_type"
    t.string   "tx_other_name"
    t.string   "tx_other_justification"
    t.integer  "tx_other_days"
    t.integer  "tx_other_sessions"
    t.string   "chemo_type"
    t.integer  "chemo_sessions"
    t.string   "chemo_dose"
    t.string   "chemo_intervals"
    t.integer  "physical_rehab_days"
    t.integer  "physical_rehab_sessions"
    t.integer  "nursing_days"
    t.integer  "nursing_hpd"
    t.boolean  "nursing_morning"
    t.boolean  "nursing_evening"
    t.boolean  "nursing_night"
    t.boolean  "nursing_24"
    t.string   "tx_observations"
    t.string   "technique_description"
    t.boolean  "special_equipment_yn"
    t.string   "special_equipment_detail"
    t.boolean  "procedure_mat_yn"
    t.string   "procedure_mat_detail"
    t.boolean  "procedure_mat_complications_yn"
    t.string   "procedure_mat_complications_describe"
    t.string   "list_other_doctors"
    t.integer  "claim_staff_id"
    t.string   "inter_consultation_name"
    t.string   "inter_consultation_specialty"
    t.boolean  "inter_consultation_network_yn"
    t.string   "inter_consultation_dates"
    t.string   "inter_consultation_description"
    t.boolean  "other_tx_other_doctor_yn"
    t.string   "other_tx_other_doctor_name"
    t.string   "other_tx_other_doctor_specialty"
    t.string   "patient_current_status"
    t.boolean  "tx_continues_yn"
    t.string   "tx_continues_type"
    t.string   "tx_continues_duration"
    t.string   "tx_continues_doctors"
    t.string   "accident_description"
    t.date     "discharge_date"
    t.string   "hospital_name"
    t.string   "hospital_city"
    t.string   "hospital_stay_type"
    t.string   "surgery_performed"
    t.string   "findings"
    t.date     "hospital_admission_date"
    t.date     "surgery_admission_date"
    t.string   "hospital_discharge_date"
    t.boolean  "disability_caused_yn"
    t.string   "disability_caused_type"
    t.date     "disability_caused_from"
    t.date     "disability_caused_until"
    t.boolean  "biopsy_yn"
    t.string   "doctor_specialty"
    t.string   "doctor_address"
    t.string   "doctor_cedula_pro"
    t.string   "doctor_cedula_esp"
    t.string   "doctor_rfc"
    t.integer  "doctor_phone"
    t.string   "doctor_email"
    t.string   "doctor_supplier_number"
    t.integer  "budget_surgeon"
    t.integer  "budget_assistants"
    t.integer  "budget_anesthesiologist"
    t.string   "hospital_surgery_name"
    t.string   "hospital_entity"
    t.date     "sugery_date"
    t.string   "doctor_signature"
    t.string   "doctor_signature_place"
    t.date     "doctor_signature_date"
    t.boolean  "agreement_ins_yn"
    t.string   "identification_file"
    t.integer  "health_summary_id"
    t.string   "insurance_name"
    t.integer  "insurance_id"
    t.string   "tx_descritption"
    t.string   "medicine_quantity"
    t.integer  "event_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.boolean  "patient_request"
    t.boolean  "patient_approved"
    t.boolean  "doctor_start"
    t.boolean  "doctor_sign"
    t.boolean  "insurance_read"
    t.boolean  "insurance_approved"
    t.text     "insurance_comments"
  end

  create_table "credentials", force: :cascade do |t|
    t.string   "practice"
    t.string   "school"
    t.integer  "doctor_id"
    t.string   "rfc"
    t.string   "curp"
    t.string   "expertise"
    t.string   "cedula_pro"
    t.string   "languages"
    t.string   "about_me"
    t.string   "photo"
    t.string   "cedula_esp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_father"
    t.string   "last_mother"
    t.string   "phone_work"
    t.string   "phone_mobile"
    t.string   "phone_home"
    t.string   "street_address_work"
    t.string   "zip_work"
    t.string   "city_work"
    t.string   "state_work"
    t.string   "practice_name"
    t.string   "gender"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_doctors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_doctors_on_reset_password_token", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.string   "diagnose"
    t.string   "weight"
    t.string   "treatment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insurers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "insurance_name"
    t.string   "position"
    t.string   "first_name"
    t.string   "last_father"
    t.string   "last_mother"
    t.integer  "employee_id"
    t.string   "employee_ref"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_insurers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_insurers_on_reset_password_token", unique: true
  end

  create_table "medical_relations", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "permission"
  end

  create_table "non_pathologicals", force: :cascade do |t|
    t.string   "drug_type"
    t.string   "quantity"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "office_profiles", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.date     "birthdate"
    t.string   "gender"
    t.string   "phone_mobile"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "other_backgrounds", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "perinatal"
    t.string   "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pathologicals", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "disease"
    t.date     "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_profiles", force: :cascade do |t|
    t.string   "curp"
    t.string   "rfc"
    t.string   "first_name"
    t.string   "last_name_father"
    t.string   "last_name_mother"
    t.string   "gender"
    t.integer  "user_id"
    t.string   "phone"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "country"
    t.date     "birthdate"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_father"
    t.string   "last_mother"
    t.datetime "birthdate"
    t.string   "curp"
    t.string   "rfc"
    t.string   "gender"
    t.string   "phone_mobile"
    t.string   "phone_home"
    t.string   "phone_office"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "country"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_patients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true
  end

  create_table "pregnancies", force: :cascade do |t|
    t.integer  "patient_id"
    t.date     "fum"
    t.integer  "number"
    t.integer  "abortion"
    t.integer  "caesarean"
    t.integer  "normal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surgicals", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "name"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
