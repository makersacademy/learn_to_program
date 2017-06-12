# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
	def initialize
		@height = 0
		@age = 0
		@orangeCount = 0
		@live = true
		puts "You orange tree is planted..."
	end

	def age
		puts "Your tree is #{@age} years old..."	
	end

	def height
		return "Your tree is #{@height}"
	end

	def one_year_passes
	  #method, which, when called, ages the tree one year.
	  if @age < 5
	        @height += 0.4
	        @orangeCount = 0
	        @age = @age + 1
	  end
	  puts "The orange tree is #{@age} years old..."
	  if @age > 5
	  	@orangeCount += (@height * 15 - 25)
	  elsif @age ==25
	  	@live = false
	  	return "Your tree is dead..."
	  end
	end

	def count_the_oranges
	  return "You have #{@orangeCount} oranges on the tree..."
	end

	def pick_an_orange
		if @orangeCount == 0
		  return "There are no more oranges to pick this year!"
		else
		  	@orangeCount -= 1
		  	puts "You picked an orange. It is delicious!"
		  	puts "There are now #{@orangeCount} oranges left on the tree."
		end 
	end
end