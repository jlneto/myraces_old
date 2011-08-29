class CreatePilots < ActiveRecord::Migration
  def self.up
    create_table :pilots do |t|
      t.integer :user_id
      t.string :nick_name
      t.integer :team_id
      t.boolean :active
      t.string :picture
      t.timestamps
    end
  end

  def self.down
    drop_table :pilots
  end
end
