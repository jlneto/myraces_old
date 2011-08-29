class Championship < ActiveRecord::Base
  attr_accessible :name, :dates, :description
	has_many :races
	has_many :championship_results
	#has_many :pilots, :through => :registered_pilots
	#has_many :teams, :through => :pilots
end
