# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.

class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @age = 1
    @alive = true

    puts "The baby orange tree has sprouted!"
  end

  def height
    @height
  end

  def one_year_passes
    if @age <= 5
      @orange_count = 0
      @alive = true
      @height = @height + 0.4
      @age = @age + 1
      puts "This year your tree grew to #{@height} tall, and produced #{@orange_count} oranges."
    else
      if @age <= 25
        @orange_count = 0
        @orange_count = @orange_count + (@height * 15 - 25)
        @alive = true
        @height = @height + 0.4
        @age = @age + 1
        puts "This year your tree grew to #{@height} tall, and produced #{@orange_count} oranges."
      elsif @age == 26
        puts 'Oh, no! The tree is too old, and has died. :('
        @alive = false
        @age = @age + 1
      else @age > 26
        puts 'A year later, the tree is still dead. :('
        @alive = false
        @age = @age + 1
      end
    end
  end

  def count_the_oranges
    if @alive == true
      @orange_count
    elsif @alive == false
      puts 'A dead tree has no oranges. :('
    end
  end

  def pick_an_orange
    if @alive == true
      @orange_count = @orange_count - 1
    elsif @alive == false
      puts 'A dead tree has nothing to pick. :('
    end
  end
end

ot = OrangeTree.new

27.times do
  ot.one_year_passes
end
