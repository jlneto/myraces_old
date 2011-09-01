class Championship < ActiveRecord::Base
  attr_accessible :name, :dates, :description
	has_many :races
	has_many :championship_results
  has_many :championship_pilots

  # da pau como admin
	#has_many :pilots, :through => :championship_pilots
	#has_many :teams, :through => :pilots
end
