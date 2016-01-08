class Dragon

	# initialize instance of a Dragon with a name, make him awake, make him full, and not needing to go
	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10
		@stuff_in_intestine = 0

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
			puts "...but wakes up when you stop."
		end
	end

	private
	# private methods defined here are methods internal to the object (you can feed your dragon, but can't ask him if he's hungry)

	def hungry? # method names can end in ? (usually used if returns true or false)
		@stuff_in_belly <= 2
	end

	def poopy?
		@stuff_in_intestine >= 8
	end

	def passage_of_time
		if @stuff_in_belly > 0
			@stuff_in_belly = @stuff_in_belly-1
		   	@stuff_in_intestine = @stuff_in_intestine +1
		 else
		 	if @asleep
		 		@asleep = false
		 		puts "He wakes up suddenly!"
		 	end
		 	puts "#{@name} is starving! In desperation, he ate YOU!"
		 	exit
		 end

		 if @stuff_in_intestine >=10
		 	@stuff_in_intestine = 0
		 	puts "Whoops! #{@name} had an accident..."
		 end

		 if hungry?
		 	if @asleep == false
		 		puts "He wakes up suddenly!"
		 	end
		 	puts "#{@name}'s stomach grumbles..."
		 end

		 if poopy?
		 	if @asleep 
		 		@asleep = false
		 		puts "He wakes up suddenly!"
		 	end
		 	puts "#{@name} does the potty dance..."
		 end
	end

end


pet = Dragon.new 'Norbert'


puts "What would you like to do - feed, toss, walk, put to bed, or rock Norbert?"

while true
	reply = gets.chomp
		pet.feed if reply == 'feed'
		pet.toss if reply == 'toss'
		pet.walk if reply == 'walk'
		pet.rock if reply == 'rock'
		pet.put_to_bed if reply == 'put to bed'
	puts "What next?"
end