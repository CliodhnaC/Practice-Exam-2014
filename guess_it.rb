require_relative 'oracle'
require_relative 'random_player'
require_relative 'smart_player'
require_relative 'sequential_player'

class GuessIt
  my_oracle = Oracle.new
  given_range = (0..1000)
  player_array = [RandomPlayer.new('John', my_oracle, given_range), SequentialPlayer.new('Niamh', my_oracle, given_range), SmartPlayer.new('Aoife', my_oracle, given_range)]

  until player_array[0].has_won? && player_array[1].has_won? && player_array[2].has_won?
    player_array.each_index do |i|
      if !player_array[i].has_won?
        player_array[i].guess
      end
    end
  end

  player_array.sort_by!{|player| player.guess_count}

  puts 'FINAL RESULTS'
  player_array.each_index do |index|
    puts "#{player_array[index].player_name} took #{player_array[index].guess_count}"
  end

end
