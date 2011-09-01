class CreateChampionshipPilots < ActiveRecord::Migration
  def self.up
    create_table :championship_pilots do |t|
      t.integer :pilot_id
      t.integer :championship_id
      t.text :observation
      t.timestamps
    end
  end

  def self.down
    drop_table :championship_pilots
  end
end
