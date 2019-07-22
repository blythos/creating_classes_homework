class SportsTeam

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

def get_team_name()
  return @name
end

def get_players()
  return @players
end

end
