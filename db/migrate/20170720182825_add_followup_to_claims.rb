class AddFollowupToClaims < ActiveRecord::Migration[5.0]
  def change

    add_column :claims, :patient_request, :boolean
    add_column :claims, :patient_approved, :boolean
    add_column :claims, :doctor_start,  :boolean
    add_column :claims, :doctor_sign, :boolean
    add_column :claims, :insurance_read, :boolean
    add_column :claims, :insurance_approved, :boolean
    add_column :claims, :insurance_comments, :text
    
  end
end
