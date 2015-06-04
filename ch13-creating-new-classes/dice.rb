class Die
  def initialize
    roll
  end

  def cheat
    @number_showing = 6
  end


  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end
end

puts Die.new.showing
puts Die.new.cheat
