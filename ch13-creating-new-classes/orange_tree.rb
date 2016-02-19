class OrangeTree

  def initialize
    @age = 0
    @height = 0
    @oranges = 0
    @alive = true
    puts "An orange tree was planted!"
  end

	def height
    if @alive
		    return @height.round(1)
      else
        'A dead tree is not very tall. :('
      end
	end

  def count_the_oranges
    if @alive
      @oranges
    else
      'A dead tree has no oranges. :('
    end
  end

  def pick_an_orange
    if @alive
      if @oranges > 0
        @oranges = @oranges - 1
        return "You pick an orange. Yum, it was delicious!"
      else
        return "Sorry, there are no oranges on the tree"
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end

  def one_year_passes
    if @alive
      @age = @age+1
      @height = @height + 0.4
      @oranges = 0
      if @age > 25
        @alive = false
        "Oh, no! The tree is too old, and has died. :("
      elsif @height > 2
        @oranges = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall, but is still too young to bear fruit."
      end
    else
      "A year later, the tree is still dead. :("
    end
  end

end
