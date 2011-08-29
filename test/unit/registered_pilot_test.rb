require 'test_helper'

class RegisteredPilotTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert RegisteredPilot.new.valid?
  end
end
