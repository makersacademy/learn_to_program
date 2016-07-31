
class OrangeTree
  	def initialize
	    @height = 0
	    @age = 0
	    @orange_count = 0
	  end

  	def height
     	if @age < 26
     		@height = (@age * 0.4).round(1)
     	else
     		 'A dead tree is not very tall. :('
     	end
  	end

	  def one_year_passes
     	@age+=1
     	height
     	count_the_oranges
     	passage_of_time
    end

    def count_the_oranges
    	if @age > 26
     		 "A dead tree has no oranges. :("
    	elsif @age > 5
     		@orange_count
     	end
    end

    def pick_an_orange
    	if @age > 26
    		 "A dead tree has nothing to pick. :("
    	elsif @orange_count >= 1
    		@orange_count = @orange_count - 1
    		 "What a delicious orange!"
    	else
    		"There are no more oranges to pick"
    	end

    end
  private
    def passage_of_time
    	if @age > 5
			     @orange_count = (@height * 15 - 25).to_i
		  end

    	if @age == 26
    		   "Oh, no! The tree is too old, and has died. :("
    	elsif @age >= 26
    		   'A year later, the tree is still dead. :('
    	elsif @age <= 5
			      "This year your tree grew to #{@height.round(1)}m tall, but is still too young to bear fruit."
    	else
    		   "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
    	end
    end
end

tree = OrangeTree.new


26.times do
	puts tree.one_year_passes
end
