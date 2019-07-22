class SportsTeam

  attr_accessor :name, :players, :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0 
  end

  # Following code refactored out to use attr_accessor instead.

  # def get_team_name()
  #   return @name
  # end
  #
  # def get_players()
  #   return @players
  # end
  #
  # def get_coach()
  #   return @coach
  # end
  #
  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_player(new_player)
    @players << new_player
  end

  def find_player(name)
    @players.include? name
  end

end
