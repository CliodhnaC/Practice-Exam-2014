require_relative 'player'

class SequentialPlayer < Player
  def guess
    sequential_guess = @range.begin
    returned_information = @oracle.is_it?(sequential_guess)

    @result = returned_information[0]

    if @result == true
      puts "#{@player_name} guessed #{sequential_guess} and won!"
    else
      puts "#{@player_name} guessed #{sequential_guess}"
    end

    @range = sequential_guess+1..@range.end
  end
end