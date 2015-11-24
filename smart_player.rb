require_relative 'player'

class SmartPlayer < Player

  def guess
    puts "Range is: #{@range}"
    super()
    @range = update_range(@range, @instruction, @guess)
  end

  def update_range(range, instruction, guess)
    if instruction == 'less'
      min_range = range.begin
      return range = min_range..guess
    else
      max_range = @range.end
      return range = guess..max_range
    end
  end
end