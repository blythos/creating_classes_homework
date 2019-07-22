require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("Pleiades Saints", ["Sporty Spice", "Katy Perry", "Iron Man", "John Smith"], "Gandhi")
  end

  def test_get_team_name

    assert_equal("Pleiades Saints", @team.get_team_name)

  end

  def test_get_players

    assert_equal(4, @team.get_players.length)

  end


end
