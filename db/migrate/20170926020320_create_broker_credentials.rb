class CreateBrokerCredentials < ActiveRecord::Migration[5.0]
  def change
    create_table :broker_credentials do |t|
      t.string :phone_work
      t.string :address_work
      t.string :city_work
      t.string :zip_work
      t.string :state_work
      t.string :country_work
      t.string :phone_mobile
      t.string :practice_name
      t.string :company
      t.integer :insurer_id
      t.string :photo
      t.string :job_title

      t.timestamps

    end
  end
end
