class CreateDevAbv0s < ActiveRecord::Migration[5.0]
  def change
    create_table :dev_abv0s do |t|
      t.integer :doctor_id
      t.string :status
      t.string :pplot1_html
      t.string :splot1_png
      t.string :splot2_png

      t.timestamps
    end
  end
end
