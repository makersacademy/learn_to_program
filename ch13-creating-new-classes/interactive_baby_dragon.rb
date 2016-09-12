class Dragon
	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10 #full
		@stuff_in_intestine = 0 # doesn't need toilet

		puts "#{name} is born."
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
			puts "#{@name} wakes up slow."
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
		puts "He briefly doses off..."
		passage_of_time
		if @asleep
			@asleep = false
			puts "...but wakes up when you stop."
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
		else #dragon is starving!
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name} is starving! In desperation, he ate YOU!"
			exit
		end
		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0
			puts "Whoops! #{@name} had an accident..."
		end
		if hungry?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly..."
			end
			puts "#{@name} does the potty dance..."
		end
	end
end

require_relative 'dragon.rb'

# ask what you want to name the dragon
puts "What do you want to call your new pet dragon?"
name = gets.chomp
pet = Dragon.new name

while true
	# ask what you want to do to the dragon?
	puts "What shall we do with #{name}?"
	answer = gets.chomp.downcase

# if walk, feed, toss, put to bed, rock, call those methods.
	if answer == "walk"
		pet.walk
	elsif answer == "feed"
		pet.feed
	elsif answer == "put to bed"
		pet.put_to_bed
	elsif answer == "rock"
		pet.rock
	elsif answer == "toss"
		pet.toss
	else
		puts "I don't understand this activity! Please try again."
		# stuff
	end
end