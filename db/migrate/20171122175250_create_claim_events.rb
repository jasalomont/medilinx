class CreateClaimEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :claim_events do |t|
      t.integer :patient_id
      t.integer :insurer_id
      t.string :insurance_name
      t.boolean :permission
      t.timestamps

    end
  end
end
