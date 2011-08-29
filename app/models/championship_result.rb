class ChampionshipResult < ActiveRecord::Base
  attr_accessible :championship_id, :pilot_id, :position, :points, :observation
	belongs_to  :championship
end
