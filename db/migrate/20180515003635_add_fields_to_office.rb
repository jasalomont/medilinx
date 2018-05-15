class AddFieldsToOffice < ActiveRecord::Migration[5.0]
  def change

    add_column :medical_relations, :office_profiles_id, :integer


    add_column :office_profiles, :religion, :string
    add_column :office_profiles, :civil_status, :string
    add_column :office_profiles, :address_home, :string
    add_column :office_profiles, :neighborhood, :string
    add_column :office_profiles, :zip, :string
    add_column :office_profiles, :city, :string
    add_column :office_profiles, :state, :string
    add_column :office_profiles, :phone_home, :string
    add_column :office_profiles, :profession, :string
    add_column :office_profiles, :address_office, :string
    add_column :office_profiles, :zip_office, :string
    add_column :office_profiles, :city_office, :string
    add_column :office_profiles, :state_office, :string
    add_column :office_profiles, :neighborhood_office, :string
    add_column :office_profiles, :phone_office, :string
    add_column :office_profiles, :emergency_name, :string
    add_column :office_profiles, :phone_emergency, :string
    add_column :office_profiles, :age_emergency, :string
    add_column :office_profiles, :referral, :string
    add_column :office_profiles, :RFC, :string
    add_column :office_profiles, :CURP, :string
    add_column :office_profiles, :address_fiscal, :string
    add_column :office_profiles, :neighborhood_fiscal, :string
    add_column :office_profiles, :zip_fiscal, :string
    add_column :office_profiles, :city_fiscal, :string
    add_column :office_profiles, :email, :string
    add_column :office_profiles, :medical_relations_ID, :integer

    add_column :other_backgrounds, :office_profiles_id, :integer
    add_column :pathologicals, :office_profiles_id, :integer
    add_column :non_pathologicals, :office_profiles_id, :integer




  end
end
