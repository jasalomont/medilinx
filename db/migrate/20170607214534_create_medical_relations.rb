class CreateMedicalRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :medical_relations do |t|
      t.integer :doctor_id
      t.integer :patient_id

      t.timestamps

    end
  end
end
