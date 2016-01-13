class Die
  def initialize(cheat=roll)
    @number_showing = cheat
  end

  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end

end

die1 = Die.new(4)
die2 = Die.new

puts die1.showing
puts die2.showing