class CreateAuthors < ActiveRecord::Migration
  def self.up
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :institution_id

      t.timestamps
    end
  end

  def self.down
    drop_table :authors
  end
end
