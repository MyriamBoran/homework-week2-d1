class Team
  attr_accessor :name, :players, :coach

  def initialize(name, coach, players = [])
    @name = name
    @players = players
    @coach = coach
  end


  def find_player(name)
    for player in @players
      if name == player
        return
      end
    end
  end

end
