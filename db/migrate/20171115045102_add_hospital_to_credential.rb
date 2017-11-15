class AddHospitalToCredential < ActiveRecord::Migration[5.0]
  def change

      add_column :credentials, :hospital_name, :string
      add_column :claim_follows, :agent_id, :integer

  end
end
