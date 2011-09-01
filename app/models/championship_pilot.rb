class ChampionshipPilot < ActiveRecord::Base
  attr_accessible :pilot_id, :championship_id, :observation
  belongs_to :pilot
  belongs_to :championship

end
