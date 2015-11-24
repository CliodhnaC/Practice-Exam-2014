require_relative 'player'

class SequentialPlayer < Player
  def guess
    @guess = @range.begin
    returned_information = @oracle.is_it?(@guess)

    @result = returned_information[0]

    super()

    @range = @guess+1..@range.end
  end
end