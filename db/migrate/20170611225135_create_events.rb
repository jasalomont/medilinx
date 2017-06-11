class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :patient_id
      t.integer :doctor_id
      t.string :diagnose
      t.string :weight
      t.string :treatment

      t.timestamps

    end
  end
end
