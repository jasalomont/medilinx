class CreateCredentials < ActiveRecord::Migration[5.0]
  def change
    create_table :credentials do |t|
      t.string :practice
      t.string :school
      t.integer :doctor_id
      t.string :rfc
      t.string :curp
      t.string :expertise
      t.string :cedula_pro
      t.string :languages
      t.string :about_me
      t.string :photo
      t.string :cedula_esp

      t.timestamps

    end
  end
end
