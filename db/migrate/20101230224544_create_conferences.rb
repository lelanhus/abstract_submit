class CreateConferences < ActiveRecord::Migration
  def self.up
    create_table :conferences do |t|
      t.string :name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
    add_column :submissions, :conference_id, :integer
  end

  def self.down
    drop_table :conferences
    remove_column :submissions, :conference_id
  end
end
