class CreateOfficeProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :office_profiles do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.date :birthdate
      t.string :gender
      t.string :phone_mobile

      t.timestamps

    end
  end
end
