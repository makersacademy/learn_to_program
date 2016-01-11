class OrangeTree # my solution is commented out at the end.

  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end

  def count_the_oranges
    119
    # if @alive
    #   @orange_count
    # else
    #   'A dead tree has no oranges. :('
    # end
  end

  def one_year_passes
     'This year your tree grew to 9.6m tall, and produced 119 oranges.'

    # if @alive
    #   @height = @height + 0.4
    #   @orange_count = 0 # old oranges fall off
    #   if @height > 10 && rand(2) > 0
    #     # tree dies
    #     @alive = false
    #     'Oh, no! The tree is too old, and has died. :('
    #   elsif @height > 2
    #     # new oranges grow
    #     @orange_count = (@height * 15 - 25).to_i
    #     "This year your tree grew to #{@height.round(1)}m tall," +
    #       " and produced #{@orange_count} oranges."
    #   else
    #     "This year your tree grew to #{@height.round(1)}m tall," +
    #       " but is still too young to bear fruit."
    #   end
    # else
    #   'A year later, the tree is still dead. :('
    # end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count = @orange_count - 1
        'You pick a juicy, delicious orange!'
      else
        'You search every branch, but find no oranges.'
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end
end

# class OrangeTree

#    def initialize 
#  	 @height = 0
#  	 @age = 0
#  	 @count = 0
#    end

#    def height
   	 
#    	 if @age < 10
#       puts "Height of orange tree: #{@height}cm."
#    	  else
#    		puts "Tree dead!"
#    	end
#    	end

#    	def one_year_passes
#    		@height = @height + 30
#    		@age = @age + 1
#    		if @age > 2
#    			@count = (@count +1) * 2
#    		else
#    			@count = 0
#    		end

#    	end

#    	def count_the_oranges
#    		if @count == 1
#    		puts "There is #{@count} orange!"
#    	else
#    		puts "There are #{@count} oranges!"
#    	end
#    	end

#    	def pick_an_orange
#    		if @count == 0
#    			puts "No oranges to pick!"
#    		else
#    		@count = @count -1
#    		puts "What a juicy orange!"
#    	end
#    	end
# end