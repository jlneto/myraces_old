require 'test_helper'

class PilotsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Pilots.new.valid?
  end
end
