require_relative 'oracle'
require_relative 'random_player'
require_relative 'smart_player'

class GuessIt
  my_oracle = Oracle.new
  # ... excluding max, .. including max
  player_john = RandomPlayer.new('John', my_oracle, (0..1000))

  puts 'AND NOW WE HAVE PLAYER ONE!!!!'
  # John's not playing for the minute
  while player_john.has_won? == false do
    player_john.guess
  end

  player_aoife = SmartPlayer.new('Aoife', my_oracle, (1..1000))

  puts 'PLAYER TWO TAKES THE STAGE!!'
  while player_aoife.has_won? == false do
    player_aoife.guess
  end
end