class Dragon 


	def initialize name #To make a new dragon you have to give it a name
		@name = name
		@asleep = false #It will automatically be awake, full and not needing to poop. 
		@stuff_in_belly = 10 
		@stuff_in_intestine = 0
		puts "#{@name} is born!" #the @name is so we can use name throughout class 'Dragon' and not just in individual methods
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
		puts "He giggles, which singes your eyebrows."
		passage_of_time
	end


	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts "He briefly dozes off..."
		passage_of_time
			if @asleep 
				@asleep = false
				puts "...but wakes when you stop."
			end
	end

	private #This is because the following methods are private. 
	# Why? You can feed, walk, put_to_bed, toss and rock your dragon
	# But you can't see how hungry he is, or if he needs to poop. 


	def hungry? #Convention to end method names with ? if the answer is true or false
		@stuff_in_belly <=2 #Will return true
	end

	def poopy?
		@stuff_in_intestine >= 8
	end


	def passage_of_time
		if @stuff_in_belly > 0
			#Moving food into intestine
			@stuff_in_belly -= 1
			@stuff_in_intestine += 1
		else #Our dragon is starving if stuff in belly is 0
			if @asleep
				@asleep = false
				puts "#{@name} wakes up suddenly!"
			end

			puts "#{@name} is starving! In desperation he ate you"
			puts "GAME OVER"
			exit # Exit program
		end

		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0 #Resets stuff in intestine to 0 because...
			puts "Whoopsie. #{@name} had an accident..."
		end

		if hungry? 
			if @asleep
				@asleep = false
				puts "#{@name} wakes up suddenly!"
			end
			puts "#{@name}'s stomach grumbles..."
		end

		if poopy?
			if @asleep
				@asleep = false
				puts "#{@name} wakes up suddenly!"
			end
			puts "#{@name} does the potty dance..."
		  end
		end
	end


puts 'What would you like to name your baby dragon?'
name = gets.chomp
dragon = Dragon.new name

while true
  puts "Do you want to take #{name} for a WALK,"
  puts "FEED #{name}," 
  puts "ROCK #{name} to sleep,"
  puts "TOSS #{name} in the air," 
  puts "put #{name} to BED..." 
  puts "... or EXIT?"
  command = gets.chomp.downcase

case command
	when "exit"
		exit
	when "walk"
		dragon.walk
	when "feed"
		dragon.feed
	when "rock"
		dragon.rock
	when "toss"
		dragon.toss
	when "bed"
		dragon.put_to_bed
	else
		puts "You can't do '#{command}'. #{name} really, really doesn't like it..."
	end
end










