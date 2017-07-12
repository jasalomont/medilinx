class FixtablesClaims < ActiveRecord::Migration[5.0]
  def self.up
   change_column :claims, :waiste_size, :float
   change_column :claims, :weight, :float
   change_column :claims, :pressure, :float
  end
  def self.down
    change_column :claims, :waiste_size, :integer
    change_column :claims, :weight, :integer
    change_column :claims, :pressure, :integer
  end
end
