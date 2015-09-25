class OrangeTree

  def initialize
	@height = 0
	@orange_count = 0
	@dead = false
  end

  def count_the_oranges
    if !@dead
  	  @orange_count
    end
  end

  def pick_an_orange
    if !@dead
      if @orange_count > 0
        @orange_count -= 1
      else
        "There are no oranges to pick"
      end
    else
	  "Tree is dead so no oranges to pick"
    end
  end

  def height
    if !@dead
      @height.round(1)
    else
  	  "Tree is dead"
    end
  end

  def one_year_passes

    if !@dead
  	  @height += 0.6
  	  @orange_count = 0

  	  if @height > 15
  	    @dead = true
      elsif @height > 3
        @orange_count = (@height * 4 + @height).round
        "This year tree's height is #{@height.round}M and has #{@orange_count} oranges"
      else
        "This year tree's height is #{@height.round}M and will soon have oranges"
      end
    else
  	  "Tree is now dead"
    end

  end


end

tr = OrangeTree.new

17.times do
  tr.one_year_passes
end

puts(tr.one_year_passes)
puts(tr.count_the_oranges)
puts(tr.height)
puts(tr.pick_an_orange)
