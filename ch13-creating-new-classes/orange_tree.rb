=begin
class OrangeTree
	def initialize
		@height = 0
		@age = 0
		@fruits = 0
		self.height
    self.count_the_oranges
	end

	def height
    return "A dead tree is not very tall" if @age > 20
		@height < 100 ? "The tree is #{@height}cm tall." : "The tree is #{@height.to_f / 100}m tall."
	end

	def count_the_oranges
    return "A dead tree does not have any oranges" if @age > 20
		@fruits > 0 ? "There are #{@fruits} oranges." : "There are no oranges."
	end

	def pick_an_orange
    return "A dead tree does not have any oranges" if @age > 20
		if @fruits > 0
			@fruits -= 1
			"There are #{@fruits} oranges left."
		else
			"There are no oranges"
		end
	end

	def one_year_passes
		if @age <= 2 #no fruits
			@age += 1
			@height += 20

		elsif @age > 2 && @age <= 4
			@age += 1
			@height += 50
			@fruits = rand(13..25)  #some fruits

		elsif @age > 4 && @age <= 20
			@age += 1
			@fruits = rand(25..50) #lotsa fruits not growing anymore

		else
			#die
			"The tree is dead."
		end
		"This year your tree grew to #{@height}cm, and produced #{@fruits} oranges"
	end
end
=end
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
      if @height > 10.1
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

# ot = OrangeTree.new
# 23.times do
#   ot.one_year_passes
# end

# puts(ot.one_year_passes)
# puts(ot.count_the_oranges)
# puts(ot.height)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.height)
# puts(ot.count_the_oranges)
# puts(ot.pick_an_orange)
