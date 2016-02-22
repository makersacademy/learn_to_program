# class OrangeTree        # My solution which works well but needs more time to
# 	def initialize        # pass rspec test. Uploaded with CP solution below.
# 		@age = 1
# 		@orange_count = 0
# 		@height = 3
#     @alive = true
# 		# puts 'You\'ve planted a year old orange sapling! But you\'ll have to wait to taste its fruit...'
# 	end
#
# 	def height
#     if @alive
#       puts 'Your tree is ' + @height + 'ft. tall.'
#     else
#       puts 'Oh dear, your tree is dead.'
#     end
# 	end
#
# 	def one_year_passes
# 		@age += 1
#   		if (@orange_count >= 1)
#   			puts 'Your tree drops the previous year\'s fruit.'
#   		end
# 		@orange_count = 0
# 		puts "It is now " +@age.to_s+ " years old and " +@height.to_s+ " ft high!"
#   		if (@age < 4)
#   			@height = @height+0.5
#   			@orange_count = 0
#   		elsif(@age > 3)&&(@age < 20)
#   			@height = @height +1
#   			@orange_count = (rand(3*@age))
#   		elsif (@age >= 51)
#   			puts 'Oh no, your orange tree has died!'
#   			puts ''
#   			exit
#   		else
#   			@height = @height
#   			@orange_count = (rand(61))
#   		end
# 		#grows 1 foot until 20 years old
# 		#drops unpicked oranges of prev year
# 		#dies after 50 years
# 	end
#
# 	def count_the_oranges
# 		if (@orange_count >=1)
# 		    puts "Your tree has " +@orange_count.to_s+ " oranges. Will you pick one?"
#     elsif @alive == false
#       puts 'Oh dear, your tree is dead.'
# 		else
# 			puts 'There are no oranges, you\'ll have to wait until next year.'
# 		end
# 	end
#
#
# 	def pick_an_orange #(oranges)
# 		if @orange_count > 0
# 			@orange_count = @orange_count-1
# 			puts 'That was a delicious orange!'
# 		else
# 			puts 'There are no oranges, you\'ll have to wait until next year.'
# 	  end
#   end
# end


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
