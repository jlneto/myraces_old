require 'test_helper'

class PilotRaceTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert PilotRace.new.valid?
  end
end
