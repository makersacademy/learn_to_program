class Dragon

	def initialize(name)
		@name = name
		@asleep = false
		@stuff_in_belly = 10 # he's full
		@stuff_in_intestine = 0 # he doesn't need to poo

		puts "#{@name} is born"
	end

	def feed
		puts "You feed #{@name}."
		@stuff_in_belly = 10 # he's full
		passage_of_time # calls this method
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
		puts "You toss #{@name} into the air."
		puts "He giggles, which singes your eyebrows."
		passage_of_time
	end

	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts "He briefly nods off..."
		passage_of_time
		if @asleep 
		   @asleep = false
		   puts "...but wakes when you stop."
		end
	end

	private
	# "private" means that the methods defined here are
	# methods internal to the object, you can't call .hungry? on the dragon. 
	
	def hungry? # usually end a method name with "?" if it returns true or false
		@stuff_in_belly <= 2
	end

	def poopy?
		@stuff_in_intestine >= 8
	end

	def passage_of_time
		if @stuff_in_belly > 0
			# move food from belly to intestine
			@stuff_in_belly -= 1
			@stuff_in_intestine += 1
		else # dragon is starving as @stuff_in_belly <= 0!
			if @asleep 
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name} is starving! In desperation, he ate YOU!"
			exit # this quits the program
		end

		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0
			puts "Whoops! #{@name} had an accident..."
		end

		if hungry? # if hungry returns true i.e. if @stuff_in_belly <= true
			if @asleep 
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name}'s stomach grumbles..."
		end

		if poopy? # if poopy? returns true i.e. if @stuff_in_belly >= 8
			if @asleep 
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name} does the potty dance..."
		end
	end
	

end

pet = Dragon.new("Norbert")
#=> Instantiates a new instance of the class Dragon.
#=> @asleep = false, @stuff_in_belly = 10, @stuff_in_intestine = 0
#=> puts "Norbert is born."

puts "What would you like to do with Norbert?"
puts "You have the following options: walk, feed, toss, put to bed, rock"
while command = gets.chomp
 if command == "walk"
  pet.walk
 elsif command == "feed"
  pet.feed
 elsif command == "toss"
  pet.toss
 elsif command == "put to bed"
  pet.put_to_bed
 elsif command == "rock"
  pet.rock
 else
  puts "Sorry, don't recognise that command!"
  exit
 end
end
 

=begin
pet.feed
#=> @stuff_in_belly = 10
#=> calls passage_of_time method: @stuff_in_belly = 9, @stuff_in_intestine = 1
#=> puts "You feed Norbert."
pet.toss
#=> puts "You toss Norbert up in the air."
#=> puts "He giggles, which singes your eyebrows"
#=> calls passage_of_time method: @stuff_in_belly = 8, @stuff_in_intestine = 2
pet.walk
#=> puts "You walk Norbert."
#=> @stuff_in_intestine = 0
#=> calls passage_of_time method: @stuff_in_belly = 7, @stuff_in_intestine = 1
pet.put_to_bed
#=> puts "You put Norbert to bed."
#=> @asleep = true
#=> 3x calls passage_of_time: @stuff_in_belly = 4, @stuff_in_intestine = 4
#=> 3x puts "Norbert snores, filling the room with smoke"
#=> @asleep = false
#=> puts "Norbert wakes up slowly."
pet.rock
#=> puts "You rock Norbert gently."
#=> @asleep = true
#=> puts "He briefly nods off."
#=> calls passage_of_time method: @stuff_in_belly = 3, @stuff_in_intestine = 5
#=> @asleep = false
#=> puts "...but wakes up when you stop."
pet.put_to_bed
#=> puts "You put Norbert to bed."
#=> @asleep = true
#=> 3x calls passage_of_time: @stuff_in_belly = 0, @stuff_in_intestine = 8
=end
