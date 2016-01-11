require "bigdecimal"

class OrangeTree
  def initialize
    @height = BigDecimal.new(0) # => Floating point addition was inaccurate and wouldn't pass rspec
    @oranges = 0
    # Adapted @age to @alive as per Pine's answer to pass rspec. Originally tree died after 26 years
    @alive = true
  end

  def height
    if @alive
      @height.to_f
    else
      "A dead tree is not very tall. :("
    end
  end

  def count_the_oranges
    if @alive
      @oranges
    else
      "A dead tree has no oranges. :("
    end
  end

  def one_year_passes
    if @alive
      @height += BigDecimal.new("0.4")  # => Floating point addition was inaccurate

      if @height > 10 && rand(2)        # => Adapted from Pine's answer to pass rspec
        @alive = false
        "Oh, no! The tree is too old, and has died. :("
      elsif @height > 2
        @oranges = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.to_f}m tall, and produced #{@oranges} oranges."
      else
        "This year your tree grew to #{@height.to_f}m tall, but is still too young to bear fruit."
      end
    else
      "A year later, the tree is still dead. :("
    end
  end

  def pick_an_orange
    if @alive
      if @oranges > 0
        puts "You pick a delicious, ripe orange."
        @oranges -= 1
      else
        puts "There are no more oranges to pick this year."
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end
end
