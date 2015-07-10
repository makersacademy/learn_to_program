class Dragon

	def initialize name
		@name = name
		@stuff_in_belly = 10
		@stuff_in_gut = 0
		puts "#{@name} was born\n"
	end

	def feed
		puts "You feed #{@name}"
		@stuff_in_belly = 10
		passage_of_time
	end

	def walk
		puts "You take #{@name} for a walk"
		@stuff_in_gut = 0
		passage_of_time
	end

	def sleep
		puts "you put #{@name} to bed"
		@asleep = true
		if @asleep == true
			3.times do
				if @asleep
					passage_of_time
				end
				if @asleep
					puts "#{@name} snores, breathing smoke everywhere"
				end
			end
			if @asleep
				@asleep = false
				puts "#{@name} wakes up slowly"
			end
		end
	end

	def hug
		puts "You gently rock while cudling #{@name}"
		@asleep = true
		puts "#{@name} briefly dozes off..."
		passage_of_time
		if @asleep
			puts "... but wakes up when you stop"
		end
	end

	def play
		game = ["You toss #{@name} in the air, \n#{@name} giggles spitting fire and singes your eyebrows", "You play catch until #{@name} laughs, melting the ball", "You watch puff the magic dragon on TV \n#{@name} lets out a cute ROAR"]
		puts game[rand(3)]
		passage_of_time
	end

	private

	def hungry?
		@stuff_in_belly <=2
	end

	def toilet?
		@stuff_in_gut >= 8
	end

	def passage_of_time
		if @stuff_in_belly > 0
			@stuff_in_belly -= 1
			@stuff_in_gut += 1
		else
			if @asleep
				asleep = false
				puts "#{@name} wakes up suddenly!"
			end
			puts "#{@name} is starving! In desperation, #{@name} ate you!"
			exit
		end

		if @stuff_in_gut >= 10
			@stuff_in_gut = 0
			puts "Whoops! #{@name} had a brown accident"
		end

		if hungry?
			if @asleep
				@asleep = false
				puts "#{@name} wakes up suddenly!"
			end
			puts "#{@name}'s stomach rumbles"
		end

		if toilet?
			if @asleep
				@asleep = false
				puts "#{@name} wakes up suddenly!"
			end
			puts "#{@name} does a potty dance..."
		end
	end
end

puts "Your egg hatches into baby dragon!!\nWhat do you want to call your pet dragon??"
@name = gets.chomp

pet = Dragon.new @name

while true
	command = ["hug", "play", "feed", "walk", "sleep"]
	puts "What do you want to do with #{@name}"
	action = gets.chomp
	action.downcase!
	command.each do |x|
		if x == action
			pet.send x
			action = true
		end
	end
	if action != true
		puts "Please try and do one of the following activities with #{@name}\n#{command.join(", ")}"
	end
	puts " "
end