class AddDoctorIdToMedicals < ActiveRecord::Migration[5.0]
  def change
    add_column :non_pathologicals, :doctor_id, :integer
    add_column :pathologicals, :doctor_id, :integer
    add_column :other_backgrounds, :doctor_id, :integer
    add_column :pregnancies, :doctor_id, :integer
    add_column :surgicals, :doctor_id, :integer
  end
end
