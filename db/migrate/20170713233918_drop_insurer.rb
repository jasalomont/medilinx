class DropInsurer < ActiveRecord::Migration[5.0]
  def change
    drop_table :insurers
  end
end
