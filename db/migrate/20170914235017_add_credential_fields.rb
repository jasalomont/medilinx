class AddCredentialFields < ActiveRecord::Migration[5.0]
  def change

    add_column :credentials, :email, :string
    add_column :credentials, :phone_work, :string
    add_column :credentials, :phone_mobile, :string
    add_column :credentials, :street_address_work, :string
    add_column :credentials, :neighborhood_work, :string
    add_column :credentials, :district_work, :string
    add_column :credentials, :zip_work, :string
    add_column :credentials, :city_work, :string
    add_column :credentials, :state_work, :string
    add_column :credentials, :practice_name, :string
    add_column :credentials, :permission_public, :boolean

  end
end
