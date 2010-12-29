class AddBodyToSubmissions < ActiveRecord::Migration
  def self.up
    add_column :submissions, :body, :text
  end

  def self.down
    remove_column :submissions, :body
  end
end
