class AddDoctorEmailToCalimFollows < ActiveRecord::Migration[5.0]
  def change
    add_column :claim_follows, :doctor_email, :string
    add_column :claim_follows, :patient_id, :integer
    add_column :claim_follows, :insurer_id, :integer
  end
end
