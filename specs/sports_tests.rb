require("minitest/autorun")
#require("mintest/rg")
require_relative("../sports")

class TestTeam < Minitest::Test


  def test_get_name
    team = Team.new("Leith", [], "Lewis")
    assert_equal("Leith", team.get_name())
  end

  def test_get_players
    team = Team.new("Leith", [], "Lewis")
    assert_equal([], team.get_players())
  end

  def test_get_coach
    team = Team.new("Leith", [], "Lewis")
    assert_equal("Lewis", team.get_coach())
  end

  def test_set_name
    team = Team.new("Leith", [], "Lewis")
    team.set_name("Pilrig")
    assert_equal("Pilrig", team.get_name())
  end

  def test_set_players
    team = Team.new("Leith", [], "Lewis")
    team.set_players(["player1", "player2"])
    assert_equal(["player1", "player2"], team.get_players())
  end

  def test_add_player
    team = Team.new("Leith", ["Cantona"], "Lewis")
    team.add_player("lewis")
    assert_equal(2, team.players.length())
  end

  def test_find_player
    team = Team.new("Leith", ["player1", "player2"], "Lewis")
    assert_equal(true, team.find_player("player1"))
  end

  def test_add_points
    team = Team.new("Leith", ["player1", "player2"], "Lewis")
    assert_equal(3, team.add_points("win"))

  end

end
