require 'test_helper'

class ChampionchipTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Championchip.new.valid?
  end
end
