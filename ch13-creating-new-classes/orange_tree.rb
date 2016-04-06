# note we have added a rounding operation on the height to ensure
# the output is sensible in terms of decimal places

class OrangeTree
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
   if @alive
     @orange_count
   else
     'A dead tree has no oranges. :('
   end
 end

 def one_year_passes
    if @alive
      @height = @height + 0.4
      @orange_count = 0 # old oranges fall off
      if @height > 10 && rand(2) > 0
        # tree dies
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




#my code for orange tree which passes the rspec but not the CI
#class OrangeTree

#def initialize
#	@age = 0
#		@height = 0
#		@numberoranges = 0
#		@dead = false
#	end
#
#	def height
 #   if @dead == false
#		puts "The tree is #{@height} feet tall."
#	end
#
#def count_the_oranges
#  if @dead == false
#		puts "The tree has #{@numberoranges} oranges."
#	end
#
#	def pick_an_orange
#		if @numberoranges < 1
#			puts 'There are no oranges to pick.'
#		else
#			puts 'You pick an orange from the tree.'
#				@numberoranges = @numberoranges - 1
#		end
#	end
#
#	def one_year_passes
 #   if @dead == false
	#	puts 'One year passes'
#		@age = @age + 1
#		@height = @height + 1
#		@numberoranges = 0
#end
#		if dead?
#			puts 'The Orange Tree dies'
#			exit
#		end 

#		if @age > 2
#			@numberoranges = @age*20
#			else
#			@numberoranges = 0
#		end
#end



#		def dead?
 #     if @age >= 5
  #      @dead = true
	#	end

#  end
#end
#end
#end