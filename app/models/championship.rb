class Championship < ActiveRecord::Base
  attr_accessible :name, :dates, :description
	has_many :races
	has_many :championship_results
  has_many :championship_pilots

  # da pau como admin
	#has_many :pilots, :through => :championship_pilots
	#has_many :teams, :through => :pilots

  def calculate_results

    # hash para salvar os resultados
    pilot = {}
    team = {}

    # somo os pontos de todas as corridas
    self.races.each do |race|
      race.race_results.each do |r|
        pilot[r.pilot_id][:points] += r.points
        team[r.pilot.team.id][:points] += r.points
      end
    end

    #recrio os registros com os pontos calculados
    self.championship_results.delete_all
    self.championship_pilots.each do |pilot|
      result = self.championship_results.new
      result.pilot_id = pilot.id
      result.points = pilot[pilot.id][:points]
      result.save!
    end

    #ordeno pelos pontos
    #mesma pontuacao, mesma posição
    pos = 1
    prev_points = 0
    self.championship_results.order("points desc").each do |r|
      if r.points < prev_points
        pos += 1
      end
      r.postions = pos
      r.save!
      prev_points = r.points
    end


  end
end
