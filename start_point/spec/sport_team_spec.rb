require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_team')

class TestTeam < MiniTest::Test

  def test_team_name
    team = Team.new("Patriots", "Jim")
    assert_equal("Patriots", team.name)
  end

  def test_update_coach_name
    team = Team.new("Patriots", "Jim")
    team.coach = 'Alan'
    assert_equal('Alan', team.coach)
  end

  def test_add_new_player
    team = Team.new("Patriots", "Jim")
    team.add_player("Burt Reynolds")
    assert_equal(["Burt Reynolds"], team.players)
  end

  def test_find_player
    team = Team.new("Patriots", "Jim")
    assert_equal(false, team.find_player("Burt Reynolds"))
    team.add_player("Burt Reynolds")
    assert_equal(true, team.find_player("Burt Reynolds"))
  end

  def test_add_points
    team = Team.new("Patriots", "Jim")
    assert_equal(0, team.points)
    team.add_points(true)
    assert_equal(1, team.points)
    team.add_points(false)
    assert_equal(1, team.points)
  end


end
