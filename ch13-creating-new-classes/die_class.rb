class Die
    def initialize
      roll
    end
    
    def roll
      @number_showing = 1 + rand(6)
      #@number_showing = 6
    end
    
    def showing
      @number_showing
    end
end

# Make two die
dice = [Die.new, Die.new]

# and roll them...
dice.each do |die|
puts die.roll

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing

end

