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


=begin
class OrangeTree
  def initialize
  	@height = 0
  	@orange_count = 0
  	@age = 0

  	puts "It's a new beautiful baby Orange Tree!"
  end

  def height
  	adjs = [ "beautiful", "amazing", "lovely", "special" ]
  	adj = adjs[rand(adjs.length)]
  	puts "Your #{adj} Orange Tree is #{@height} meters tall!"
  end

  def one_year_passes
  	puts "Another year passes and your orange tree grows."
  	@age += 1
  	@height += 1
  	if @age > 4
  		amount = 15
  		@orange_count += amount
  		amount += 2
  	end

  	if @age > 24
  		puts "Unfortunately, your Orange Tree has grown too old."
  		puts "It withered away and died :("
  		puts "But fear not! It's in a better place now!"
  		exit
  	else
  		puts "Another year passes and your orange tree grows."
  	end	
  end

  def count_the_oranges
  	if @orange_count > 0
  		puts "You look up and see #{@orange_count} supple, delicious Orange(s) from your fruitful tree!"
  	else
  		puts @orange_count
  	end
  end

  def pick_an_orange
  	if @orange_count > 0
  		puts "You reach up and grab an orange from the tree."
  		@orange_count -= 1
  	else
  		puts "There are no oranges for you to pick"
  	end
  end
end
=end