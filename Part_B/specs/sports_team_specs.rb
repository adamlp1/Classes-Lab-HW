require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team.rb")

class TestSportsTeam < MiniTest::Test

  def test_team_name
    sports_team = SportsTeam.new("Hamilton", ["Miller", "Gordon", "Imrie"], "Brian Rice", 0)
    assert_equal("Hamilton", sports_team.team)
  end

  def test_players_names
    sports_team = SportsTeam.new("Hamilton", ["Miller", "Gordon", "Imrie"], "Brian Rice", 0)
    assert_equal(["Miller", "Gordon", "Imrie"], sports_team.players)
  end

  def test_coach_name
    sports_team = SportsTeam.new("Hamilton", ["Miller", "Gordon", "Imrie"], "Brian Rice", 0)
    assert_equal("Brian Rice", sports_team.coach)
  end

  def test_set_coach_name
    sports_team = SportsTeam.new("Hamilton", ["Miller", "Gordon", "Imrie"], "Brian Rice", 0)
    sports_team.coach = "Alex Neil"
    assert_equal("Alex Neil", sports_team.coach)
  end

  def test_add_player
    sports_team = SportsTeam.new("Hamilton", ["Miller", "Gordon", "Imrie"], "Brian Rice", 0)
    sports_team.players.push("Martin")
    assert_equal(["Miller", "Gordon", "Imrie", "Martin"], sports_team.players)
  end

  def test_player_check
    sports_team = SportsTeam.new("Hamilton", ["Miller", "Gordon", "Imrie"], "Brian Rice", 0)
    sports_team.check_for_player("Gordon")
    assert_equal(true, sports_team.check_for_player("Gordon"))
  end

  def test_points_from_result
    sports_team = SportsTeam.new("Hamilton", ["Miller", "Gordon", "Imrie"], "Brian Rice", 0)
    sports_team.points_calculator("win")
    assert_equal(3, sports_team.points)
  end

  











end
