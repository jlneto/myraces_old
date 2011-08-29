require 'test_helper'

class TracksTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Tracks.new.valid?
  end
end
