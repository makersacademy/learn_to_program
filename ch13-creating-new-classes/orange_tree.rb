=begin 

class OrangeTree
	def initialize
		@height=0
		@orange_count=0
		@alive= true
		@age=0
  end
	def height
		if @alive
		   @height
			puts "your tree is #{@height} #{ @height == 1 ? "metre" : "metres"} tall"
		else
			"your tree is dead"
		end
	end

	 def one_year_passes 
	 	@age += 1
	 	@height += 1
	 	@orange_count = 0
	 	if @age == 30
	 		@alive=false
	 		
	 	end
	 	  
          
           if @age > 3 
	 			@orange_count = @age * 3
	 			puts "This year your tree grew to #{@height.round(1)}m tall," + "there are #{@orange_count} oranges"
			elsif @alive == false
				puts "tree is dead" 
			else 
				"your tree is too small"
			end
         
	end

	def count_the_oranges
		if @alive == true
        	
		end
	end

	def pick_an_orange
		if @alive 
			 if @orange_count > 0
		  		@orange_count	-= 1
				puts "the oranges were so tasty"
			else
				puts "no more oranges on the tree"
	    	end
	    else
	    	"your tree is dead"
	    end
	end  # your code here
end
=end 

#ot = OrangeTree.new
#23.times do
 # ot.one_year_passes
#   end

# puts(ot.one_year_passes)
 #puts(ot.count_the_oranges)
 #puts(ot.height)
 #puts(ot.one_year_passes)
 #puts(ot.one_year_passes)
 #puts(ot.one_year_passes)
 #puts(ot.one_year_passes)
 #puts(ot.one_year_passes)
 #puts(ot.height)
 #puts(ot.count_the_oranges)
 #puts(ot.pick_an_orange)
 
class OrangeTree
  def initialize
    @age, @height, @orange_count, @alive = 0, 0, 0, true
    puts 'A seed has been sown'
  end

  def height
    if @alive
      @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      'A dead tree has no oranges. :('
    end
  end

  def one_year_passes
    if @alive
      @age += 1
      @height = @height + 0.4
      @orange_count = 0 # old oranges fall off
      if @age > 25
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
        # new oranges grow
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall," +
          " and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall," +
          " but is still too young to bear fruit."
      end
    else
      'A year later, the tree is still dead. :('
    end
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
  		  


