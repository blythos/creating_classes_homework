require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("Celtic", ["Sporty Spice", "Katy Perry", "Iron Man", "John Smith"], "Gandhi")
  end


end
