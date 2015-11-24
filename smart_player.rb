class SmartPlayer

  def guess
    super()
    update_range(@range, instruction)
  end

  def update_range (range, instruction)
    if instruction == 'less'
      min_range = range.begin
      return range = min_range..guess
    elsif instruction == 'more'
      max_range = range.end
      return range = guess..max_range
    else
      return range
    end
  end

end