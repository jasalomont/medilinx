class CreateNonPathologicals < ActiveRecord::Migration[5.0]
  def change
    create_table :non_pathologicals do |t|
      t.string :drug_type
      t.string :quantity
      t.integer :patient_id

      t.timestamps

    end
  end
end
