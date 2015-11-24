require_relative 'player'

class RandomPlayer < Player

  def guess
    random_generator = Random.new
    @guess = random_generator.rand(@range)

    returned_information = @oracle.is_it?(@guess)
    @result = returned_information[0]

    super()
  end
end