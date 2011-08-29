class CreateRegisteredPilots < ActiveRecord::Migration
  def self.up
    create_table :registered_pilots do |t|
      t.integer :pilot_id
      t.integer :championship_id
      t.timestamps
    end
  end

  def self.down
    drop_table :registered_pilots
  end
end
