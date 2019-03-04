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
    team = Team.new("Patriots", "Jim", [])
    team.players << 'Burt Reynolds'
    assert_equal(["Burt Reynolds"], team.players)
  end

  def test_find_player
    team = Team.new("Patriots", "Jim", ["kumal", "ron", "harry", "Angus Porter"])
    team.find_player = "Angus Porter"
    assert_equal("Angus Porter", team.find_player)
  end


end
