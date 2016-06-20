=begin
#13.2: Creating Classes
class Die
    def roll
        1 + rand(6)
    end
end

dice = [Die.new, Die.new]

dice.each do |die|
    puts die.roll
end
=end

#=begin
#13.3: Instance Variables
class Die
    def initialize
        roll
    end
    
    def cheat(number)
        if (number > 0) && (number <= 6) && (number.is_a? Integer)
            @number_showing = number
        else
            puts "Can't cheat, #{number} is an invalid number!"
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
die.roll
puts die.showing
die.cheat(5)
puts die.showing
#=end