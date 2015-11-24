class Player
  attr_reader :guess_count, :player_name

  def initialize (player_name, oracle, range)
    @player_name = player_name
    @oracle = oracle
    @range = range
    @result = false
    @guess_count = 0
  end

  def guess
    @guess_count += 1
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