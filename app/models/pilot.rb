class Pilot < ActiveRecord::Base
  attr_accessible :user_id, :nick_name, :team_id, :active, :picture
	belongs_to :user
	has_many :race_results
	has_many :championship_results
	#has_many :championships, :through => :registered_pilots
	
end
