# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

def initialize 
	@height = 0.0
	@fruit = 0
	@age = 0
	@alive = true
end

def one_year_passes
	if @age <= 5
		@age+=1
		@height+=0.4
	
	elsif @age == 25
		@alive=false
		@age+=1
		'Oh, no! The tree is too old, and has died. :('
		
	elsif @alive == false
		'A year later, the tree is still dead. :('
	
	else
	 	@age+=1
		@height+=0.4
		@fruit=(@height * 15 - 25).floor
		return "This year your tree grew to #{@height.round(2)}m tall, and produced #{@fruit.round(0)} oranges."
	end
end
	
def height
	@alive == false ? 'A dead tree is not very tall. :(' : @height.round(2)
end

def pick_an_orange
	if @alive == false 
		'A dead tree has nothing to pick. :('
	elsif @fruit > 1 	
		@fruit-=1
		' You pick a juicy orange'
	else
		' There is no fruit left'
	end
end

def count_the_oranges
	@alive == false ? 'A dead tree has no oranges. :(' : @fruit
end

end

