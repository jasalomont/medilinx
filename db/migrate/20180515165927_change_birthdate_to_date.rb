class ChangeBirthdateToDate < ActiveRecord::Migration[5.0]
  def change
    change_column :medical_relations, :birthdate, :date
  end
end
