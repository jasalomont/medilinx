class AddMedMedRelToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :medical_relation_id, :integer
      add_column :evol_mednotes, :medical_relation_id, :integer
        add_column :non_pathologicals, :medical_relation_id, :integer
          add_column :other_backgrounds, :medical_relation_id, :integer
              add_column :pathologicals, :medical_relation_id, :integer
                  add_column :pregnancies, :medical_relation_id, :integer
                      add_column :surgicals, :medical_relation_id, :integer
                          
  end
end
