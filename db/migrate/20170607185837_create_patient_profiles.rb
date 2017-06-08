class CreatePatientProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :patient_profiles do |t|
      t.string :curp
      t.string :rfc
      t.string :first_name
      t.string :last_name_father
      t.string :last_name_mother
      t.string :gender
      t.integer :user_id
      t.string :phone
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :country
      t.date :birthdate

      t.timestamps

    end
  end
end
