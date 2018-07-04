class CreateBroklytics < ActiveRecord::Migration[5.0]
  def change
    create_table :broklytics do |t|
      t.text :clirecurrence
      t.text :clievolution
      t.text :claimtimetable
      t.text :claimtimes
      t.text :claimstatus
      t.text :claimrejects
      t.text :claimiters
      t.text :claimfrauds
      t.text :fraudprobab
      t.text :clisatisfaction
      t.integer :insurer_id

      t.timestamps
    end
  end
end
