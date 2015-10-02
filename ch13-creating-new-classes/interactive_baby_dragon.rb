class Dragon
	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10
		@stuff_in_intestine = 0

		puts "#{@name} is born"
	end

	def feed
		puts "You feed #{@name}"
		@stuff_in_belly = 10
		passage_of_time
	end

	def walk
		puts "You walk #{@name}."
		@stuff_in_intestine = 0
		passage_of_time
	end

	def put_to_bed
		puts "you put #{@name} to bed."
		@asleep = true
		3.times do
			if @asleep
				passage_of_time
			end
			if @asleep
				puts "#{@name} snores, filling the room."
			end
		end
		if @asleep
			@asleep = false
			puts "#{@name} wakes up slowly."
		end
	end

	def toss
		puts "You toss #{@name} up into the air"
		puts "He giggles, and singes your eyebrows."
		passage_of_time
	end

	def rock
		puts "you rock #{@name} gently."
		@asleep = true
		puts "He briefly doses off..."
		passage_of_time
		if @asleep
			@asleep = false
			puts "but he wakes up when you stop..."
		end
	end

	private
	def hungry?
		@stuff_in_belly <=2
	end

	def toilet?
		@stuff_in_intestine >=8
	end

	def passage_of_time
		if @stuff_in_belly > 0
			@stuff_in_belly = @stuff_in_belly-1
			@stuff_in_intestine = @stuff_in_intestine+1
		else
			if @asleep = false
				puts "he wakes up suddenly"
			end
			puts "#{@name} is starving! In desperation, he ate YOU!"
			exit
		end
		if @stuff_in_intestine >=10
			@stuff_in_intestine=0
			puts "Whoops! #{@name} had an accident..."
		end
		if hungry?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name}'s stomach grumbles..."
		end

		if toilet?
			if @asleep
				@asleep = false
				puts "he wakes up suddenly!"
			end
			puts "#{@name} does the shit dance"
		end
	end
end

puts "Please name your Dragon"
name = gets.chomp
pet = Dragon.new name

puts "please pick an action"

while true 
	puts
 	 puts 'commands:  feed, toss, walk, rock, put to bed, exit'
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
	puts 'Huh? Please type one of the commands.' 
	end
end

#def actions
#	@inputs = ["feed", "walk", "put_to_bed", "toss", "walk", "exit"]

	
#	@inputs = gets.chomp
#	if @inputs == "feed"
#		pet.feed
#	elsif @inputs == "walk"
#		pet.walk
#	elsif @inputs == "put_to_bed"
#		pet.put_to_bed
#	elsif @inputs == "toss"
#		pet.toss
#	elsif @inputs == "walk"
#		pet.walk
#	elsif @inputs == "exit"
#		exit
#	else
#		puts "please choose one of the commands"
#	end
#	actions
#end

#actions
#pet.actions

		
			
			
		
			

