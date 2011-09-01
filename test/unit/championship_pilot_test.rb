require 'test_helper'

class ChampionshipPilotTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ChampionshipPilot.new.valid?
  end
end
