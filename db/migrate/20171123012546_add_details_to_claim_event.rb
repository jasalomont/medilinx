class AddDetailsToClaimEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :claim_follows, :insurance_name, :string
    add_column :claim_events, :patient_name, :string
    add_column :claim_events, :claim_type, :string
    add_column :insurers, :hr, :boolean


  end
end
