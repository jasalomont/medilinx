class CreateClaimFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :claim_follows do |t|
      t.boolean :patient_request
      t.boolean :doctor_start
      t.boolean :doctor_sign
      t.boolean :insurance_read
      t.boolean :insurance_approved
      t.text :insurance_comments
      t.integer :claim_id

      t.timestamps

    end
  end
end
