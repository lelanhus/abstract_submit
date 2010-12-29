class AddInstitutionIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :institution_id, :integer
  end

  def self.down
    remove_column :users, :institution_id
  end
end
