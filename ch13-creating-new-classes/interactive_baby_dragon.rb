class Dragon

	def initialize name # initialize is a special method in Ruby programs. When you call Dragon.new to create a new Dragon object, 
		@asleep = false  	#Ruby creates an uninitialized object and then calls that object's initialize method, 
		@stuff_in_belly = 10 #passing in any parameters that were passed to new. 
		@stuff_in_intestine = 0	#This gives you a chance to write code that sets up your object's state.
		puts "#{@name} is born."  #instance variables asigned to values that when the class is called will be initialized. 
								 # each object represents its own dragon, so we need each of the dragon object to carry around its own
								 # sleep, stuff in belly, stuff in intestine and name. These are stored as instance variables within the object.
	end							
	def feed
		puts "You feed #{@name}." # method within the class that feeds. 
		@stuff_in_belly = 10
		passage_of_time			#passes in the passag_of_time method that subtracts from stuff_in_belly and adds 1 to stuff in intestine
	end
	def walk
		puts "You walk #{@name}." # method within the class that walks. 
		@stuff_in_intestine = 0 #
		passage_of_time # passes in the passage_of_time method that subtracts from stuff_in_belly and adds one to stuff in intestine.
	end
	def put_to_bed
	    puts "You put #{@name} to bed." 
		@asleep = true
		3.times do
		  if @asleep
			 passage_of_time #passes in the passage_of_time method that subtracts from stuff_in_belly and adds one to stuff in intestine.
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
	
	def hungry?
		@stuff_in_belly <= 2
	end

	def poopy?
		@stuff_in_intestine >= 8
	end
	
	def passage_of_time
	  if @stuff_in_belly > 0
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

puts 'What would you like to name your baby dragon?'
name = gets.chomp
pet = Dragon.new name

while true
	puts
	puts 'commands: feed, toss, walk, rock, put to bed, exit'
	command = gets.chomp

	if command == 'exit'
		exit
	elsif command == 'feed'
		pet.feed
	elsif command == 'toss'
		pet.toss
	elsif command == 'walk'
		pet.walk
	elsif command == 'rock'
		pet.rock
	elsif command == 'put to bed'
		pet.put_to_bed
	else
		puts 'Hug? Please type one of the commands'
	end
end			
