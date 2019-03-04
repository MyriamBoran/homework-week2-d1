class Team
  attr_accessor :name, :players, :coach, :points

  def initialize(name, coach, players = [], points = 0)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  def add_player(player)
    @players << player
  end

  def find_player(player_name)
    for player in @players
      if player_name == player
        return true
      end
    end
    return false
  end

  def add_points(has_won)
    if has_won
      @points += 1
    end
  end
end
