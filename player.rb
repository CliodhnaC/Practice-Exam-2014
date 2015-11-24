class Player
  def initialize (player_name, oracle, range)
    @player_name = player_name
    @oracle = oracle
    @range = range
    @result = false
  end

  def has_won?
    @result
  end
end