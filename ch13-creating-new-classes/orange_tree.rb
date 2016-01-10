class OrangeTree
	def initialize 
		@height  = 0
		@alive   = true
		@oranges = 0
		@age     = 0
	end

	def height
		if @alive == true
			return "#{@height}m"
		else
			puts 'I am afraid.. the tree.. passed away.. :('
		end
	end

	def one_year_passes
		if @alive   == true
			alto     = @height
			@oranges = 0
			@age     = @age + 1

			if @age <= 5 and @age >= 3
				@oranges = rand(5..10) #range of random oranges
				@height  = @height + 2 #depending of the age will grow more.. or..less!
				grows    = @height - alto
				puts "This young tree grew #{grows}m! And gave #{@oranges} oranges! not a lot.. but still good :D"
			
			elsif @age >5 and @age <15
				@oranges = rand(8..20) #range of random oranges
				@height  = @height + 1
				grows    = @height - alto
				puts "This young tree grew #{grows}m! And has #{@oranges} oranges! Amazing :D"

			elsif @age >= 0 and @age < 3
				@height  = @height + 5
				grows    = @height - alto
				puts "This young tree grew #{grows}m.. that's a lot! And has #{@oranges} oranges... well.. it's too young for oranges. :)"
				
			else
				@alive = false
				puts 'I am afraid this tree had a beautiful life.. but..well.. I do not know how to tell you.. there are not oranges...anymore.'
		
			end
		else
			puts "I am afraid this tree had a beautiful life.. but..well.. #{@age} years are a lot.. I do not know how to tell you.. there are not oranges...anymore."
	
		end		
	end

	def count_the_oranges
		if @alive == true
			return @oranges
		else
			puts "I am afraid this tree had a beautiful life.. there are not oranges...anymore."
		end	
	end

	def pick_an_orange
		if @alive == true #need to be alive to give oranges
			if @oranges > 0
				@oranges = @oranges - 1 #need to take off and output how many left
				puts "The tree has #{@oranges} left. :)"
			else
				puts "there are...#{@oranges} oranges! sorry :("
			end
		else
			puts "I do not think a dead tree can have any orange.. there are nice ones in Tesco.. Sorry about that."
			
		end
	end
  # your code here
end
ot = OrangeTree.new
8.times do
   ot.one_year_passes
end

puts(ot.one_year_passes)
puts '1------'
 puts(ot.count_the_oranges)
 puts '2------'
 puts(ot.height)
 puts '3------'
 puts(ot.one_year_passes)
 puts '4------'
 puts(ot.one_year_passes)
 puts '5------'
 puts(ot.one_year_passes)
 puts '6------'
 puts(ot.one_year_passes)
 puts '7------'
 puts(ot.one_year_passes)
 puts '8------'
 puts(ot.height)
 puts '9------'
 puts(ot.count_the_oranges)
 puts '10------'
 puts(ot.pick_an_orange)

