class CreateDoclytics < ActiveRecord::Migration[5.0]
  def change
    create_table :doclytics do |t|
      t.integer :doctor_id
      t.text :paxcounts
      t.text :paxrecurrence
      t.text :paxreference
      t.text :diagnostics
      t.text :prescriptions

      t.timestamps
    end
  end
end
