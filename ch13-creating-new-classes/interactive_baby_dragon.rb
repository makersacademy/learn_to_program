=begin
 Interactive baby dragon. Write a program that lets you enter commands such as feed and walk and 
 calls those methods on your dragon. Of course, since you are inputting just strings, you will need 
 some sort of method dispatch, where your program checks which string was entered and then calls the 
 appropriate method.
=end

class Dragon
    def initialize (name)
        @name = name.capitalize
        puts "Your new Dragon's name is '#{@name}'."
    end
    def name
        @name    
    end
    def feed
        puts "You have just fed your pet dragon '#{@name}'." 
    end
    def walk
        puts "You have just walked your pet dragon '#{@name}'." 
    end
    def tickle
        puts "'#{@name}' is enjoying having his tummy tickled. \"Gneeearh, gneeearh, gneeearh\", he goes which is like purring but for dragons."
    end
    def quit
        puts "'#{@name}' is mighty sad to see you go!"
        exit
    end
end

puts "I've heard you got yourself a dragon pet. What's his name?"
name = gets.chomp
petd = Dragon.new (name)
puts "What would you like to do now?"
puts "You can do the following with '#{petd.name}' the dragon: 'feed', 'walk', 'tickle' or 'quit'."
puts "Enter one of these commands:"
cmd = gets.chomp
askagain = true
while true   
    cmd.downcase!
    case cmd
        when "feed" 
            petd.feed
            cmd = ""
        when "walk" 
            petd.walk
            cmd = ""
        when "tickle" 
            petd.tickle
            cmd = ""
        when "quit" 
            petd.quit
    else
        puts "That command is not recognised. Please enter a recognised command."
    end
    puts
    puts "What would you like to do now?"
    puts "You can do the following with '#{petd.name}' the dragon: 'feed', 'walk', 'tickle' or 'quit'."
    puts "Enter one of these commands:"
    cmd = gets.chomp
end    



