class Track < ActiveRecord::Base
  attr_accessible :name, :localization
	has_many :races
end
