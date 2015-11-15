class OrangeTree
  def initialize
    @height = 0
    @alive = true
    @orange_count = 0
    @age = 0
  end

  def height
    if @alive
      @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end

  def age
    puts "It's been #{@age} years since you planted #{@name}"
  end

  def count_the_oranges
    @alive ? @orange_count : "A dead tree has no oranges. :("
  end

  def pick_an_orange
    if @alive
      return "Sorry, no oranges to pick!" if @orange_count == 0
      if @orange_count % 3 == 0
        puts "Yeuch! You got a sour one."
      else
        puts "Oooh that's a juicy one!"
      end
      @orange_count -= 1
    else
      "A dead tree has nothing to pick. :("
    end
  end

  def one_year_passes
    if @alive
      @orange_count = 0
      @height += 0.4
      @age += 1
      if @height > 10.2
        @alive = false
        "Oh, no! The tree is too old, and has died. :("
      elsif @height > 2
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

end

tree = OrangeTree.new

40.times do
  puts tree.one_year_passes
end

puts tree.count_the_oranges
puts tree.height
puts tree.pick_an_orange
