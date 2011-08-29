require 'test_helper'

class RaceResultTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert RaceResult.new.valid?
  end
end
