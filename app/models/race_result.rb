class RaceResult < ActiveRecord::Base
  attr_accessible :race_id, :pilot_id, :position, :observation, :points
	belongs_to :pilot
	belongs_to :race
	
end
