=begin
#10.1: Recursive Psychology Program
def ask_recursively(question)
    puts question
    reply = gets.chomp.downcase
    
    if reply == 'yes'
        true
    elsif reply == 'no'
        false
    else
        puts "Please answer 'yes' or 'no'."
        ask_recursively(question)
    end
end

ask_recursively("Do you wet the bed?")
=end

=begin
#10.1: Recursion with factorials
def factorial(num)
    if num  < 0
        return "Please enter a positive number!"
    end
    
    if num <= 1
        1
    else
        num * factorial(num-1)
    end
end

puts factorial(3)
puts factorial(30)
=end

=begin
#10.1: Recursive land
M = 'land'
o = 'water'

world = [[o,o,o,o,o,o,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,M],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,M,o,o,o,o,o]]

def continent_size(world,x,y)
    if world[y][x] != 'land'
        return 0
    elsif (y > world.length) || (x > world[0].length)
        return 0
    elsif (y < 0) || (x < 0)
        return 0
    end
    
        size = 1
        world[y][x] = 'counted land'
        
        size = size + continent_size(world, x-1, y-1)
        size = size + continent_size(world, x, y-1)
        size = size + continent_size(world, x+1, y-1)
        size = size + continent_size(world, x-1, y)
        size = size + continent_size(world, x+1, y)
        size = size + continent_size(world, x-1, y+1)
        size = size + continent_size(world, x, y+1)
        size = size + continent_size(world, x+1, y+1)
        size
end

puts continent_size(world,5,5)
=end