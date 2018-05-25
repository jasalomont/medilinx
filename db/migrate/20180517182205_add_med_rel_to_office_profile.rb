class AddMedRelToOfficeProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :office_profiles, :medical_relation_id, :integer
    add_column :medical_relations, :gender, :string
    add_column :medical_relations, :email, :string
    add_column :medical_relations, :blood_type, :string

  end
end
