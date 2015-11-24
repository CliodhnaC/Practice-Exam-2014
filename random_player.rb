require_relative 'player'

class RandomPlayer < Player

  def guess
    guess = rand(@range)

    returned_information = @oracle.is_it?(guess)
    @result = returned_information[0]
    @instruction = returned_information[1]

    if @result == true
      puts "#{@player_name} guessed #{guess} and won!"
    else
      puts "#{@player_name} guessed #{guess}"
    end
  end
end