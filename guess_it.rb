require_relative 'oracle'
require_relative 'random_player'

class GuessIt
  my_oracle = Oracle.new
  # ... excluding max, .. including max
  player_john = RandomPlayer.new("John", my_oracle, (0..1000))


  while player_john.has_won? == false do
    player_john.guess
  end
end