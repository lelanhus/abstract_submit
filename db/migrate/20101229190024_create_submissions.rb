class CreateSubmissions < ActiveRecord::Migration
  def self.up
    create_table :submissions do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :submissions
  end
end
