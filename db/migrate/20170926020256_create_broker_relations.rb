class CreateBrokerRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :broker_relations do |t|
      t.integer :patient_id
      t.integer :insurer_id
      t.string :insurance_company
      t.boolean :permission
      t.text :broker_notes
      t.string :contract_code

      t.timestamps

    end
  end
end
