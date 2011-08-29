require 'test_helper'

class RacesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Races.new.valid?
  end
end
