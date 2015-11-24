class Player
  def initialize (player_name, oracle, range)
    @player_name = player_name
    @oracle = oracle
    @range = range
    @result = false
  end

  def guess
    guess = rand(@range)

    returned_information = @oracle.is_it?(guess)
    @result = returned_information[0]

    if @result == true
      puts "#{@player_name} guessed #{guess} and won!"
    else
      puts "#{@player_name} guessed #{guess}"
    end
  end

  def has_won?
    @result
  end
end