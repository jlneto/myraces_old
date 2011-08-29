require 'test_helper'

class ChampionshipResultTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ChampionshipResult.new.valid?
  end
end
