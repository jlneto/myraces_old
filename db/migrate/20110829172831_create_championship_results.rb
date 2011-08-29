class CreateChampionshipResults < ActiveRecord::Migration
  def self.up
    create_table :championship_results do |t|
      t.integer :championship_id
      t.integer :pilot_id
      t.integer :position
      t.integer :points
      t.text :observation
      t.timestamps
    end
  end

  def self.down
    drop_table :championship_results
  end
end
