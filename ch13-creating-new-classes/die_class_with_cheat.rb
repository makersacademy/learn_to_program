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
  def cheat number
    if number > 6
      return 'That number is too high'
    elsif number < 1
      return 'That number is too low'
    else
    @number_showing = number
    end
  end
end

die_1 = Die.new
die_1.cheat 2
puts die_1.showing