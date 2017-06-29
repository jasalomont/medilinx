class DropClaims < ActiveRecord::Migration[5.0]
  def up
    drop_table :claims
  end

  def down
    create_table :claims do |t|
      t.string :table_column
      t.references :anothertable

      t.timestamps
    end
    add_index :tablenames, :anothertable_id
  end
end
