class Dragon
	def initialize name
		@name=name
		@asleep=false
		@belly=10
		@intest=0
		puts "#{@name} was born"
	end
	
	def feed
		puts "You feed #{@name}"
		@belly=10
		passage_of_time
	end
	
	def walk
		puts "You walk #{@name}"
		@intest=0
		passage_of_time
	end 
	
	def put_to_bed
		puts "You put #{@name} to bed"
		@asleep=true
		3.times do
			passage_of_time if @asleep
			puts "#{@name} snores, filling the room with smoke" if @asleep
		end
		if @asleep
			@asleep=false
			puts "#{@name} wakes up slowly"
		end
	end
	
	def rock
		puts "#You rock #{@name} gently."
		@asleep = true
		puts "He briefly dozes off..."
		passage_of_time
		if @asleep
			@asleep=false 
			puts "But wakes up when you stop."
		end
	end
	
	private
	
	def hungry?
		@belly <=2
	end
	
	def poopy?
		@intest >=8
	end
	
	def passage_of_time
		if @belly > 0
			@belly -=1
			@intest +=1
		else
			if @asleep
				@asleep = false
				puts "He wakes up suddenly"
			end
			puts "#{@name} is starving, he ate you!"
			exit
		end
		
		if @intest >=10
			@intest=0
			puts "Oops he had an accident"
		end
		
		if hungry?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly"
			end
			puts "#{@name}'s stomach grumbles..."
		end
		
		if poopy?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly"
			end
			puts "#{@name} does the potty dance ..."
		end
	end
end

actions={'feed'=>'feed','walk'=>'walk','puthimtobed'=>'put_to_bed','rockhim'=>'rock'}
			
puts "What would you like to call your dragon?"
input=gets.chomp
dr=Dragon.new(input)
while true
puts "What would you like to do with your dragon? You can feed, walk, put him to bed or rock him!"
action=gets.chomp.delete(' ')
if actions.keys.include? action
	dr.public_send(actions[action]) 
else
	puts "I'm sorry you can't do that"
end
end

		
	