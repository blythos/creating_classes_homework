require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("Pleiades Saints", ["Sporty Spice", "Katy Perry", "Iron Man", "John Smith"], "Gandhi")
  end

  def test_get_team_name

    assert_equal("Pleiades Saints", @team.name)

  end

  def test_get_players

    assert_equal(4, @team.players.length)

  end

  def test_get_coach

    assert_equal("Gandhi", @team.coach)

  end

  def set_coach

    @team.set_coach("Daniel Bedingfield")
    assert_equal("Daniel Bedingfield", @team.get_coach)

  end

  def test_add_player

    @team.add_player("Tifa Lockheart")
    assert_equal(5, @team.players.length)

  end

  def test_find_player__is_there

    result = @team.find_player("Katy Perry")
    assert_equal(true, result)

  end

  def test_find_player__is_not_there

    result = @team.find_player("Someone Else")
    assert_equal(false, result)

  end


end
