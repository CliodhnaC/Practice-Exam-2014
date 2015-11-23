require_relative 'random_player'

class Oracle
  def initialize
    @secret_number = rand(1001)
  end

  # For testing
  def to_s
    "#{@secret_number}"
  end

  def is_it? (guess)
    if @secret_number == guess
      return true
    end
    return false
  end
end

