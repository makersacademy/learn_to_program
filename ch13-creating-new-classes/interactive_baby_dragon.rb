class Dragon

	def initialize name
		@name=name
		@asleep=false
		@stuff_in_belly=10
		@stuff_in_intestine=0

		puts "#{@name} is born"
	end

	def dispatch action
		if action != ("feed" || "walk"||"bed"||"toss"||"rock")
			puts "Please enter feed, walk, bed or toss or exit!"
		end
		if action =='feed'
			feed
		elsif action =="walk"
			walk
		elsif action == "bed"
			put_to_bed
		elsif action =="toss"
			toss
		elsif action =="rock"
			rock
		end
	end

	def feed 
		puts "You feed #{@name}"
		@stuff_in_belly=10
		passage_of_time
	end

	def walk
		puts "You walk #{@name}"
		@stuff_in_intestine=0
		passage_of_time
	end

	def put_to_bed 
		puts "You put #{@name} to bed"
		@asleep=true
		3.times do 
			if @asleep
				passage_of_time
			end
			if @asleep
				puts "#{@name} snores, filling the room with smoke"
			end
		end
		if @asleep
			@asleep=false
			puts " #{@name} wakes up slowly"
		end
	end

	def toss 
		puts "you toss #{@name} up in the air."
		puts "He giggles, which singes your eyebrows"
		passage_of_time
	end

	def rock 
		puts "You rock #{@name} gently."
		@asleep=true
		puts "he breifly dozes off ..."
		passage_of_time
		if @asleep
			@asleep=false
			puts '... but wakes when you stop'
		end
	end

	private

	def hungry?
		@stuff_in_belly<=2
	end

	def poopy?
		@stuff_in_intestine>=8
	end

	def passage_of_time
		if @stuff_in_belly >0
			@stuff_in_belly=@stuff_in_belly - 1
			@stuff_in_intestine=@stuff_in_intestine + 1
		else
			if @asleep
				@asleep=false
				puts"He wakes up suddenly!"
			end
			puts "#{@name} is starving! In desperation, he ate YOU!!"
			exit
		end

		if @stuff_in_intestine >=10
			@stuff_in_intestine=0
			puts "Whoops! #{@name} had an accident"
		end

		if hungry?
			if @asleep
				@asleep=false
				puts "he wakes up suddenly!"
			end
		end

		if poopy?
			if @asleep
				@asleep=false
				puts "He wakes up suddenly!"
			end
			puts "#{@name} does the potty dance ..."
		end
	end

end

puts "Enter a name for you dragon: "
name=gets.chomp

pet=Dragon.new name

while true
	puts "Enter an action (feed/walk/bed/toss/rock/exit)"
	action = gets.chomp
	if action =='exit'
		break
	end
	pet.dispatch action
end