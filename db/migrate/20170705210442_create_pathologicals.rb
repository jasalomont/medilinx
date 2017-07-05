class CreatePathologicals < ActiveRecord::Migration[5.0]
  def change
    create_table :pathologicals do |t|
      t.integer :patient_id
      t.string :disease
      t.date :start_date

      t.timestamps

    end
  end
end
