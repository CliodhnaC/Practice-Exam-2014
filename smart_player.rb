require_relative 'player'

class SmartPlayer < Player

  def guess
    puts "Range is: #{@range}"
    random_generator = Random.new
    @guess = random_generator.rand(@range)

    returned_information = @oracle.is_it?(@guess)
    @result = returned_information[0]
    instruction = returned_information[1]
    super()
    @range = update_range(@range, instruction, @guess)
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