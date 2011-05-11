class AddDivisionIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :division_id, :integer
  end

  def self.down
    remove_column :users, :division_id
  end
end
