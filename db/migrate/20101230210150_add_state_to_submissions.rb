class AddStateToSubmissions < ActiveRecord::Migration
  def self.up
    add_column :submissions, :state, :string
  end

  def self.down
    remove_column :submissions, :state
  end
end
