require 'test_helper'

class PilotRacesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert PilotRaces.new.valid?
  end
end
