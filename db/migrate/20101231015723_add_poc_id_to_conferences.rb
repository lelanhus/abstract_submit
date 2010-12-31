class AddPocIdToConferences < ActiveRecord::Migration
  def self.up
    add_column :conferences, :poc_id, :integer
  end

  def self.down
    remove_column :conferences, :poc_id
  end
end
