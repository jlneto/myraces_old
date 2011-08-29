require 'test_helper'

class TeamsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Teams.new.valid?
  end
end
