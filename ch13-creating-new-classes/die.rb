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

  def cheat(value)
    if value <= 6 && value >= 0
      @number_showing = value
    else
      "That's not a valid value for a d6 silly"
    end
  end

end

die = Die.new
puts die.showing
die.cheat(7)
puts die.showing
