class Race < ActiveRecord::Base
  attr_accessible :championship_id, :track_id, :date, :time, :status
	belongs_to :championship
	belongs_to :track
  has_many :race_results

  def calculated_points
    position_points(self.position) +  participation_points(nil)
  end


  def self.position_points(position)
    case position
      when 1
        9
      when 2
        6
      when 3
        4
      when 4
        3
      when 5
        2
      when 6
        1
      else
        0
    end
  end

  def self.participation_points(best_lap)
    # ganha 5 pontos só por participar
    if best_lap
      5
    else
      0
    end
  end

end
