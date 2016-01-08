class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10
		@stuff_in_intestine = 0

		puts "#{@name} is born!"
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
				puts "#{@name} snores, filling the room with smoke"
			end
		end
		if @asleep
			@asleep = false
			puts "#{@name} wakes up slowly."
		end
	end

	def toss
		puts "you toss #{@name} into the air!"
		puts "They giggle and singe your eyebrows."
		passage_of_time
	end

	def rock
		puts "you rock #{@name} gently."
		@asleep = true
		puts "They breifly dozes off..."
		passage_of_time
		if @asleep
			@asleep = false
			puts "... but they wake when you stop."
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
			@stuff_in_belly 	= @stuff_in_belly - 1
			@stuff_in_intestine	= @stuff_in_intestine + 1
		else
			if @asleep
				@asleep = false
				puts "wakes up suddenly!"
			end
			puts "#{@name} is so hungry they ate you!"
			exit
		end

		if @stuff_in_intestine >=10
			@stuff_in_intestine == 0
			puts "Whoops! #{@name} had an accident!"
		end

		if hungry?
			if @asleep
				@asleep == false
				puts 'Your Dragon wakes up suddenly!'
			end
			puts "#{@name}'s stomach grumbles"
		end

		if poopy?
			if @asleep
				@asleep = false 
				puts "Your dragon wakes up suddenly!"
			end
			puts "#{@name} does the potty dance!"
		end
	end

end

def new_dragon
	puts "What would you like to call your dragon?"
	@name = gets.chomp.capitalize!
	@pet = Dragon.new "#{@name}"
	prompt
	
end

def prompt
	puts "What would you like to do with #{@name}? type 'Feed' to feed #{@name}. Type 'Walk' to walk #{@name} if they need the toilet, or type 'Put to bed' to put them to sleep!"
	@input = gets.chomp.downcase
	if @input == 'exit'
		exit
	end
	actions
end
	

def actions
	if @input == 'feed'
		@pet.feed
	elsif @input == 'walk'
		@pet.walk
	elsif @input == 'put to bed'
		@pet.put_to_bed
		puts "type 'rock' to try to rock #{@name} back to sleep! Otherwise what would you like to do to #{@name}? 'Feed', 'Walk', or 'Put to bed'? " 
		@input = gets.chomp
		if @input == 'rock'
			@pet.rock
		else
			actions
		end
	else
		puts "Sorry no such command!"
		prompt
	end
    prompt
end






new_dragon