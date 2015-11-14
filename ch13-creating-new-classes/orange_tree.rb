class OrangeTree
 
	def initialize name
		@height = 0
		@orange_count = 0
		@age = 0
		puts "the tree was planted..."

	end

	def water
		puts "you water the plant"
		@height += 0.5
	end

	def height
		p @height
	end

	def count_the_oranges
		p @orange_count
		
	end

	def pick_an_orange
		if @orange_count > 0
			puts "This orange isn't quite ripe..." if @age > 5
			puts "This orange is delicious!"if @age >10
			puts "These aren't as good as they used to be..." if @age >15
			@orange_count -=1
		else
			puts "There are no oranges to pick!"
			
		end
	end

	def one_year_passes
		@height += 1
		@age +=1
		case @age
		when 2..5
			@orange_count = rand(20)
		when 6..15
			@orange_count = rand(80)
		when 15..20
			@orange_count = rand(30)
		else
			@orange_count = 0
		end
	 	if  height == 21
			puts "The tree has grown too tall. It falls over and dies."
			@height = 0
			@orange_count = 0
		end

	end

end

