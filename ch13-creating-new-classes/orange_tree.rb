# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree 
	def initialize
		@h = 0
		@o = 0
	end
	def height
		return @h > 10 ? 'A dead tree is not very tall. :(' : @h.round(1)
	end

	def count_the_oranges
	return	@h > 10 ? 'A dead tree has no oranges. :(' : @o
	end
    
  def pick_an_orange
    	
    if @h > 10 
     return 'A dead tree has nothing to pick. :('
    else 
    	if @o >= 1 
    	  @o -= 1
    	  puts "that was delicious"
    	else
    		puts "there are no oranges left"
    	end
    end
  end

	def one_year_passes
  	if @h.round(1) > 10
  	  return "A year later, the tree is still dead. :("
  	else
  		@o = 0
  		@h += 0.4
  		if @h.round(1) > 10
  			return 'Oh, no! The tree is too old, and has died. :('
  	  end

  	  if @h > 2
  	    @o = ((@h * 15) - 25).to_i
  		end
		  return "This year your tree grew to #{@h.round(1)}m tall, and produced #{@o} oranges."
	  end
	end
end
