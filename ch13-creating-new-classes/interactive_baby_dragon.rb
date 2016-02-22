class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly	= 10 	# He's full.
		@stuff_in_intestine	= 0 # Doesn't need to poop yet.

		puts "#{@name} is born."
	end

	def feed
		puts "You feed #{@name}."
		@stuff_in_belly = 10
		passage_of_ime
	end

	def walk
		puts "You take #{@name} for a walk."
		@stuff_in_intestine = 0
		passage_of_ime
	end

	def put_to_bed
		puts "You put #{@name} down to sleep."
		@asleep = true
		3.times do
			if @asleep
				passage_of_ime
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
		puts "You toss #{@name} up in the air."
		puts "He giggles, which singes your eyebrows."
		passage_of_ime
	end

	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts "He briefly dozes off..."
		passage_of_ime
		if @asleep
			@asleep = false
			puts "...but wakes up when you stop."
		end
	end

		private
		#stuff going on in the dragon that you can't see.

		def hungry?
			#returns true or false based on:
			@stuff_in_belly <= 2
		end

		def poopy?
			@stuff_in_intestine >=8
		end

		def passage_of_ime
			if @stuff_in_belly > 0
				# stuff moving from belly to bowels over times
				@stuff_in_belly 	= @stuff_in_belly  -1
				@stuff_in_intestine 	= @stuff_in_intestine +1
			else  #dragon is starving!
				if @asleep
					@asleep = false
					puts "He wakes up suddenly!"
				end
				puts "#{@name} is starving!  In desperation, he eats you!"
				puts ""
				exit #This quits the program
			end

			if @stuff_in_intestine >= 10
				@stuff_in_intestine = 0
				puts "Oh dear, #{@name} had an accident..."
			end

			if hungry?
				if @asleep
					@asleep = false
					puts "He wakes up suddenly!!"
				end
				puts "#{@name}'s stomach grumbles..."
			end

			if poopy?
				if @asleep
					@asleep = false
					puts "He wakes up suddenly!!!"
				end
				puts "#{@name} does the potty dance..."
			end




		def interact
			puts ""
			puts "What would you like to do with #{@name}?"
			puts "enter 'feed' to feed your dragon."
			puts "enter 'walk' if you think he needs to go toilet."
			puts "enter 'bedtime' to put your dragon to bed."

		command = gets.chomp
			if (command.downcase == "feed")
				feed
				interact
			elsif (command.downcase == "walk")
				walk
				interact
			elsif (command.downcase == "toss")
				toss
				interact
			elsif (command.downcase == "rock")
				rock
				interact
			elsif (command.downcase == "bedtime")
				put_to_bed
				interact
			elsif (command.downcase == "exit")
				exit
			else
				"Please type a valid command."
			end
		end
	end
end



pet = Dragon.new 'Griswald'
		pet.feed
		pet.toss
		pet.walk
		pet.put_to_bed
		pet.rock
		pet.interact
		puts ''


#pet.put_to_bed
#pet.put_to_bed
#pet.put_to_bed
#pet.put_to_bed

puts ''
