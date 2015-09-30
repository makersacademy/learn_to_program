class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @age = 0
    @alive = true
  end

  def height
    if @alive
      @height
    else
      "The tree is dead and has dried out."
    end
  end

  def count_the_oranges
    if @alive
    @orange_count
    else
    "The tree is dead and has no orange."
    end
  end

  def one_year_passes
    if @alive
    @height = @height + 0.5
    @orange_count = 0
    @age = @age + 1
      if @age > 25
        @alive = false
        "The tree is dead!"
      elsif @age > 2
        @orange_count = (@orange_count + @height * 0.5).to_i
        "Your tree produced #{@orange_count} oranges." + " It grew to #{@height}m tall."
      else
        "Your tree is still too young to bear fruits." + " It grew to #{@height}m tall."
      end
    else
      "Your tree is dead"
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count == 0
      "There are no oranges on the orange tree."
      else
      "You picked a delicious orange."
      @orange = @orange - 1
      end
    else
      "The tree is dead and has no orange"
    end
  end
end

ot = OrangeTree.new
23.times do
  ot.one_year_passes
end

puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange)
