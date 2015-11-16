=begin

class OrangeTree
 
	def initialize
		@height = 0
		@orange_count = 0
		@age = 0
		puts "the tree was planted..."

	end

	def water
		@height = @height + 0.5
		puts "you water the plant"
	end

	def height
		puts "the tree is #{@height} meters tall!"
	end

	def count_the_oranges
		puts "There are #{@orange_count} oranges"
		
	end

	def pick_an_orange
		if @orange_count > 0
			puts "This orange isn't quite ripe..." if @age > 5
			puts "This orange is delicious!"if @age >10
			puts "These aren't as good as they used to be..." if @age >21
			@orange_count = @orange_count - 1
		else
			puts "There are no oranges to pick!"
			
		end
	end

	def one_year_passes
		@height = @height + 1
		@age = @age+1
		case @age
		when 2..5
			@orange_count = rand(20)
		when 6..15
			@orange_count = rand(80)
		when 15..20
			@orange_count = rand(30)
		else
			@orange_count = 0
		end
	 	if  @height > 21
			puts "The tree has grown too tall. It falls over and dies."
			@height = 0
			@orange_count = 0
			@age = 0
			exit
		end

	end

end

=end


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









