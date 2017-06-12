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
		@orange_ount = 0
		@live = true
	end

	def age
		"Your tree is #{@age} years old..."	
	end

	def height
		if @alive
			@height.round(1)
		else
		"Your tree is dead!"
		end
	end

	def one_year_passes
	  #method, which, when called, ages the tree one year.
	  if @ailve
	  	@height += 0.4
	  	@age += 1
	  	@orange_count=0
		if @age <= 5
	        @orangeCount = 0
	        "This year your tree grew to #{@height.round(1)}m tall," +
          " but is still too young to bear fruit."
		elsif @age > 5 && @age <=25
	  		@orangeCount = (@height * 15 - 25)
	  		"This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
		else 
	  		@live = false
	  		'Oh, no! The tree is too old, and has died. :('
		end
	  else
	  	'A year later, the tree is still dead. :('
	  end
	end

	def count_the_oranges
		if @alive
			@orange_count
		else
		  	"A dead tree has no oranges"
		end
	end

	def pick_an_orange
		if @alive 
			if @orangeCount == 0
				'You search every branch, but find no oranges.'
			else
		  		@orangeCount -= 1
		  		'You pick a juicy, delicious orange!'
			end
		else
			'A dead tree has nothing to pick. :('
		end
	end
end