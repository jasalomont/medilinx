class DropTypeFromEvent < ActiveRecord::Migration[5.0]
  def change
    
    add_column :events, :encounter_type, :string
  end
end
