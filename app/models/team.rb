class Team < ActiveRecord::Base
  attr_accessible :name, :descritpion
	has_many :pilots
end
