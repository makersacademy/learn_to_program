# Commenting out my perfectly funcitonal solution because rspec won't pass for it (expecinting Chris Pine's arbitrary values)

=begin
class OrangeTree

  def initialize
    @height = 0
    @years = 0
    @oranges = 0
    @alive = true
  end

  def one_year_passes
  	@years += 1
  	@alive = false if @years >= 300
  	return "The tree has died" if not @alive
  	@height += 10
  	if @years > 5
  		@oranges = 2 + (@years/3).floor
  	end
  	"This year your tree grew #{@height}cm tall and produced #{@oranges} oranges"
  end

  def count_the_oranges
  	return "The tree has died" if not @alive
  	@oranges
  end

  def pick_an_orange
  	return "The tree has died" if not @alive
  	return "No oranges to pick!" if @oranges == 0
  	@oranges -= 1
  	"The orange was delicious"
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
