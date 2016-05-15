# your code here
class Dragon
     def initialize name
          @name = name
          @asleep = false
          @stuff_in_belly = 10 # He's full.
          @stuff_in_intestine = 0 # He doesn't need to go.
          puts "#{@name} is born."
     end
     def feed
          puts "You feed #{@name}."
          @stuff_in_belly = 10
          passage_of_time
     end
     def walk
          puts "You walk #{@name}."
          @stuff_in_intestine = 0
          passage_of_time
     end
     def put_to_bed
          puts "You put #{@name} to bed."
          @asleep = true
          3.times do
               if @asleep
                    passage_of_time
               end
               if @asleep
                    puts "#{@name} snores, filling the room with smoke."
               end
          end
          if @asleep
               @asleep = false
                    puts "#{@name} wakes up slowly."
          end
     end
     def toss
          puts "You toss #{@name} up into the air."
          puts 'He giggles, which singes your eyebrows.'
          passage_of_time
     end
     def rock
          puts "You rock #{@name} gently."
          @asleep = true
          puts 'He briefly dozes off...'
          passage_of_time
          if @asleep
               @asleep = false
               puts '...but wakes when you stop.'
          end
     end
     private
     # "private" means that the methods defined here are
     # methods internal to the object. (You can feed your
     # dragon, but you can't ask him whether he's hungry.)
     def hungry?
     # Method names can end with "?".
     # Usually, we do this only if the method
     # returns true or false, like this:
          @stuff_in_belly <= 2
     end

     def poopy?
          @stuff_in_intestine >= 8
     end

     def passage_of_time
          if @stuff_in_belly > 0
               # Move food from belly to intestine.
               @stuff_in_belly = @stuff_in_belly - 1
               @stuff_in_intestine = @stuff_in_intestine + 1
          else # Our dragon is starving!
               if @asleep
                    @asleep = false
                    puts 'He wakes up suddenly!'
               end
               puts "#{@name} is starving! In desperation, he ate YOU!"

               exit # This quits the program.
          end
          
          if @stuff_in_intestine >= 10
               @stuff_in_intestine = 0
               puts "Whoops! #{@name} had an accident..."

          end
          if hungry?
               if @asleep
                    @asleep = false
                    puts 'He wakes up suddenly!'
               end
               puts "#{@name}'s stomach grumbles..."
          end

          if poopy?
               if @asleep
                    @asleep = false
                    puts 'He wakes up suddenly!'
               end
               puts "#{@name} does the potty dance..."
          end
     end
end

puts "You have gained a dragon, what is it's name?"
name = gets.chomp

Dragon.new(name)

puts "What a nice name for them."
puts "Taking care of a dragon is hard work, there are several tasks which you need to do"
puts "You need to 'feed' it, 'walk' it, 'put' it to bed, 'play' with it and 'rock' it to sleep"
puts "This does get tiring work, so at times you may need to 'leave' it be for a while"
task = ""
while task != "leave"
     puts "What would you like to do now?"
     task = gets.chomp
     if task == "feed"
          name.feed 
     elsif task == "walk"
          name.walk
     elsif task == "put"
          name.put_to_bed 
     elsif task == "play"
          name.toss
     elsif  task == "rock"
          name.rock 
     else
          puts "I do not recognise that task, please use one of the task words between the ' below"
          puts "You need to 'feed' it, 'walk' it, 'put' it to bed, 'play' with it and 'rock' it to sleep"
     end
end