class SportsTeam

attr_reader :team, :players, :coach, :points
attr_writer :coach, :points

  def initialize(team, players, coach, points)
    @team = team
    @players = players
    @coach = coach
    @points = points
  end

  def check_for_player(player_name)
    for player in @players
      if (player == player_name)
        return true
      end
    end
    return false
  end

  def points_calculator(result)
    if result == "win"
      @points += 3
    elsif
      result == "draw"
      @points += 1
    else
      @points += 0
    end
   end




end
