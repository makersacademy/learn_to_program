# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.

class OrangeTree
  attr_writer :death
  attr_reader :height, :age, :year
    def initialize
        @age = 0
        @height = 0
        @year = 0
        @death = 26
    end

    def height
      return @height.round(2) unless old?
      'A dead tree is not very tall. :('
    end

    def count_the_oranges
        if old?
          'A dead tree has no oranges. :('
        else
          @fruit
        end
    end

    def pick_an_orange
        if old?
          'A dead tree has nothing to pick. :('
        elsif @fruit > 0
            @fruit -= 1
            "You've taken one #{@name}. There are #{@fruit} #{@name}s on the tree."
        elsif @fruit == 0
            "Oops! You've picked all the #{@name}s. There are none left!!!"
        end
    end


    def one_year_passes
        @age += 1
        @height += 0.4
        @year += 1

        if @age >= 6
          @fruit = (@height * 15 - 25).to_i
        else
          @fruit = 0
        end

        if @age == @death
          'Oh, no! The tree is too old, and has died. :('
        elsif @age > @death
          'A year later, the tree is still dead. :('
        else
          "This year your tree grew to #{@height.round(2)}m tall, and produced #{count_the_oranges} oranges."
        end
    end

    def old?
        @age >= @death
    end

end
