class Die

  def initialize
    roll
  end

  def cheat
  	number = gets.chomp.to_i
  	if (number <= 6) && (number >= 1)
  		@number_showing = number
    else 
    	roll
    end
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

end

die = Die.new

puts die.showing
puts die.cheat
# or could say puts Die.new.showing