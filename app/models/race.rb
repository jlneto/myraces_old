class Race < ActiveRecord::Base
  attr_accessible :championship_id, :track_id, :date, :time, :status
	belongs_to :championship
	has_many :races
	belongs_to :track
	
	
end
