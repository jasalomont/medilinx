class CreateBrokerInsurers < ActiveRecord::Migration[5.0]
  def change
    create_table :broker_insurers do |t|
      t.integer :insurer_id
      t.string :company_name
      t.string :relation_type

      t.timestamps

    end
  end
end
