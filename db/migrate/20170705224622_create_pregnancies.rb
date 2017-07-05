class CreatePregnancies < ActiveRecord::Migration[5.0]
  def change
    create_table :pregnancies do |t|
      t.integer :patient_id
      t.date :fum
      t.integer :number
      t.integer :abortion
      t.integer :caesarean
      t.integer :normal

      t.timestamps

    end
  end
end
