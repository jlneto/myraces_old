require 'test_helper'

class PilotTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Pilot.new.valid?
  end
end
