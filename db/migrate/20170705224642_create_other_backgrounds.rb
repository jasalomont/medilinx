class CreateOtherBackgrounds < ActiveRecord::Migration[5.0]
  def change
    create_table :other_backgrounds do |t|
      t.integer :patient_id
      t.string :perinatal
      t.string :other

      t.timestamps

    end
  end
end
