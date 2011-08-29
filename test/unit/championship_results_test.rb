require 'test_helper'

class ChampionshipResultsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ChampionshipResults.new.valid?
  end
end
