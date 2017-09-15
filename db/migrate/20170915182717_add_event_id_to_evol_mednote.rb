class AddEventIdToEvolMednote < ActiveRecord::Migration[5.0]
  def change
    
    add_column :medical_relations, :patient_email, :string
    add_column :insurers, :insurance_co, :boolean
    add_column :evol_mednotes, :event_id, :integer

  end
end
