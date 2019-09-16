class Team

  attr_accessor(:team, :players, :coach)

  def initialize(input_name, input_players, input_coach)
    @name = input_name
    @players = input_players
    @coach = input_coach
    @points = 0


  end

  def get_name()
    return @name
  end

  def get_players()
    return @players
  end

  def get_coach()
    return @coach
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_coach(new_coach)
    @coach = new_coach
  end

  def set_players(new_players)
    @players = new_players
  end

  def add_player(player)
    @players << player
  end

  def find_player(name)
    for player in @players
      return true if player == name
    end
  end

  def add_points(result)
    @points += 3 if result == "win"
    @points += 1 if result == "draw"
    @points += 0 if result == "lose"
    return @points
  end

end
