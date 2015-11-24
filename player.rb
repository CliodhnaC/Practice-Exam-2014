class Player
  #attr_reader :instruction, :guess

  def initialize (player_name, oracle, range)
    @player_name = player_name
    @oracle = oracle
    @range = range
    @result = false
  end

  def guess
    if @result == true
      puts "#{@player_name} guessed #{@guess} and won!"
    else
      puts "#{@player_name} guessed #{@guess}"
    end
  end

  def has_won?
    @result
  end
end