class GuessIt
  my_oracle = Oracle.new
  # ... excluding max, .. including max
  player_john = RandomPlayer.new("John", my_oracle, (0..1000))


  
end