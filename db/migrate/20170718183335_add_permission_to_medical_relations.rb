class AddPermissionToMedicalRelations < ActiveRecord::Migration[5.0]
  def change
    add_column :medical_relations, :permission, :boolean
  end
end
