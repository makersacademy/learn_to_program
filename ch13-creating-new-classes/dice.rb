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

  def cheat num
    if num >= 1 && num < 7
      @number_showing = num
    else
      "gimme a valid number!!"
    end
  end

end
# Let's make a couple of dice...
dice = Die.new
puts dice.showing
puts dice.showing
dice.cheat 5
puts dice.showing
