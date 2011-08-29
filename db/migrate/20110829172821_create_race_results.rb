class CreateRaceResults < ActiveRecord::Migration
  def self.up
    create_table :race_results do |t|
      t.integer :race_id
      t.integer :pilot_id
      t.integer :position
      t.text :observation
      t.integer :points
      t.timestamps
    end
  end

  def self.down
    drop_table :race_results
  end
end
