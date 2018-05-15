class AddFieldsToOfficeCorrectOp < ActiveRecord::Migration[5.0]
  def change
    add_column :other_backgrounds, :office_profile_id, :integer
    add_column :pathologicals, :office_profile_id, :integer
    add_column :non_pathologicals, :office_profile_id, :integer
    add_column :medical_relations, :office_profile_id, :integer
  end
end
