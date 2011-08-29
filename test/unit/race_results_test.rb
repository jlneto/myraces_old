require 'test_helper'

class RaceResultsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert RaceResults.new.valid?
  end
end
