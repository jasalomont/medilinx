class CreateEvolMednotes < ActiveRecord::Migration[5.0]
  def change
    create_table :evol_mednotes do |t|
      t.integer :prescription_id
      t.integer :lab_tests_id
      t.integer :doctor_id
      t.string :mednote_responsible
      t.string :mednote_responsible_sign
      t.integer :patient_id
      t.string :patient_name
      t.string :patient_gender
      t.integer :patient_age
      t.float :record_id
      t.string :exterior_obs
      t.float :temperature
      t.float :blood_pressure
      t.float :heart_freq
      t.float :breathing_rate
      t.float :weight
      t.float :size
      t.string :data_head
      t.string :data_neck
      t.string :data_chest
      t.string :data_abdomen
      t.string :data_limbs
      t.string :data_genitals
      t.text :lab_results
      t.text :clinical_diagnose
      t.text :forecast
      t.text :therapeutic_indic
      t.text :evolution_update_cc
      t.text :tx_results
      t.text :tx
      t.string :evol_dose
      t.string :evol_med_intake
      t.string :evol_med_periodicity

      t.timestamps

    end
  end
end
