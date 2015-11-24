require_relative 'player'

class SmartPlayer < Player

  def guess
    puts "Range is: #{@range}"
    guess = rand(@range)

    returned_information = @oracle.is_it?(guess)
    @result = returned_information[0]
    @instruction = returned_information[1]

    if @result == true
      puts "#{@player_name} guessed #{guess} and won!"
    else
      puts "#{@player_name} guessed #{guess}"
      if returned_information[1] == 'less'
        min_range = @range.begin
        @range = min_range..guess
      else
        max_range = @range.end
        @range = guess..max_range
      end
    end
  end

end