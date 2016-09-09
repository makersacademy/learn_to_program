class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat(num)
    return if (num > 6 || num < 0)
    @number_showing = num
  end

end

dice = Die.new
puts dice.showing
puts dice.cheat(6)
