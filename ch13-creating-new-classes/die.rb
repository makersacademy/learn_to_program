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
    if !(1..6).include?(num)
      puts "Not a valid number"
      return @number_showing
    end
    @number_showing = num
  end
end

#die = Die.new
#puts die.showing
#die.cheat(3)
#puts die.showing
#die.cheat(0)
