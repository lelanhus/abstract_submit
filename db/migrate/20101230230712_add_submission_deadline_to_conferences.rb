class AddSubmissionDeadlineToConferences < ActiveRecord::Migration
  def self.up
    add_column :conferences, :submission_deadline, :datetime
  end

  def self.down
    remove_column :conferences, :submission_deadline
  end
end
