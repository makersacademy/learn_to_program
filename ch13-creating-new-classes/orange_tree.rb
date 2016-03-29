class OrangeTree

  def initialize
    @orange_count = 0
    @height = 0
    @alive = true
  end

  def height
    if @alive
     @height.round(1)
    else
      "A dead tree is not very tall. :("
    end
  end

  def one_year_passes
    if @alive
      @height += 0.4
      @orange_count = 0
      if @height > 10.1
        @alive = false
        "Oh, no! The tree is too old, and has died. :("
      elsif @height > 2
       @orange_count = (@height * 15 - 25).to_i
       "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{height.round(1)}m tall, but is still too young to bear fruit."
      end
    else
      "A year later, the tree is still dead. :("
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count -= 1
        "You pick a juicy, delicious orange!"
      else
       "You search every branch, but find no oranges."
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end

end






#First method. Which doesn't pass the tests. Method above altered to pass the rspec tests, whcih are very specific.

=begin
class OrangeTree

  def initialize
    @orange_count = 0
  @height = 0
  @age = 0
  puts "You've just planted your orange tree!"
  end

  def height
    puts "Your orange tree measures #{@height} metres tall."
  end

  def one_year_passes
    if @age <= 100
      @age += 1
      @height += 1
      @orange_count = 0
       @orange_count =+ (@age * 10)  if @age > 2
       puts "Another year has passed. Your tree is #{@height} metres tall. It is #{@age} years old and currently has #{@orange_count} oranges on it."
    else
      @orange_count = 0
       puts "Sorry, tree is dead."
    end
  end

  def count_the_oranges
    puts "You have #{@orange_count} oranges on the tree."
  end

  def pick_an_orange
      if @orange_count > 0
        @orange_count -= 1
        puts "You've picked an orange (it was delicious), so you now have #{@orange_count} oranges left."
      else
        puts "Sorry, no oranges to pick!"
      end
  end

end
=end
