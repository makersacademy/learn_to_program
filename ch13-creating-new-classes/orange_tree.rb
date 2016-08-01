# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
    @height = 0
    @oranges = 0
    @age = 0

    puts "Tree number #{@tree_number} is planted"

    @tree_alive = true
  end

  def height
    if @tree_alive == false
      return "A dead tree is not very tall. :("
    end

    puts "The tree is #{@height} meters tall"
    @height
  end

  def count_the_oranges
    if @tree_alive == false
      return "A dead tree has no oranges. :("
    end

    puts "Tree number #{@tree_number} has #{@oranges} oranges"
    @oranges
  end

  def pick_an_orange
    if @tree_alive == false
      return "A dead tree has nothing to pick. :("
    end

    if @oranges > 0
      @oranges -= 1
      puts "Ummmm, what a delicious orange!"
    elsif @oranges <= 0
      puts "There are no oranges on the tree"
    end
  end

    def one_year_passes
      if @tree_alive == false
        return "A year later, the tree is still dead. :("
      end

      @oranges = 0
      @height += 0.4
      @age += 1

      if @age >= 5
        @oranges = (@height * 15 - 25)
      end

      if @age > 25
        @tree_alive = false
      end


      @oranges = @oranges.to_i #you can't grow part of an orange
      @height = @height.round(1)

      if @tree_alive == true
        "This year your tree grew to #{@height}m tall, and produced #{@oranges} oranges."
      else
        "Oh, no! The tree is too old, and has died. :("
      end
    end
end
