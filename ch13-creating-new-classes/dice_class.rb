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
    if num <= 6
      @number_showing = num
    else
      puts "There are not #{num} sides to a dice"
    end
  end
end

puts Die.new.showing
puts Die.new.cheat(4)
puts Die.new.showing
puts Die.new.cheat(8)
puts Die.new.cheat(9_999_999)
