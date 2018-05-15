class AddFieldsToMedicalRel < ActiveRecord::Migration[5.0]
  def change

    add_column :medical_relations, :first_name, :string
    add_column :medical_relations, :last_father, :string
    add_column :medical_relations, :Last_mother, :string
    add_column :medical_relations, :birthdate, :string
    add_column :office_profiles, :first_name, :string
    add_column :office_profiles, :last_father, :string
    add_column :office_profiles, :Last_mother, :string


  end
end
