class CreateSurgicals < ActiveRecord::Migration[5.0]
  def change
    create_table :surgicals do |t|
      t.integer :patient_id
      t.string :name
      t.date :date

      t.timestamps

    end
  end
end
