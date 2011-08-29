class CreateRaces < ActiveRecord::Migration
  def self.up
    create_table :races do |t|
      t.integer :championship_id
      t.integer :track_id
      t.date :date
      t.string :time
      t.string :status
      t.timestamps
    end
  end

  def self.down
    drop_table :races
  end
end
