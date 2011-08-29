class RegisteredPilot < ActiveRecord::Base
  attr_accessible :pilot_id, :championship_id
	belongs_to :pilot
	belongs_to :championship
end
