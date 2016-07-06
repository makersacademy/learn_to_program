# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.

class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @orange_count = 0
    @alive = true
    return "Your orange tree has just been born."
  end

def height

  if @alive
      return @height.round(2)
  else
      return "A dead tree is not very tall. :("
  end
end

def one_year_passes
    @height = @height + 0.4
    @age = @age + 1
    @orange_count = (@height * 15 - 25).to_i
    if @age > 26
      @alive = false
      return "A year later, the tree is still dead. :("
    end

    if @age == 26
      return "Oh, no! The tree is too old, and has died. :("
    end

  if @alive
    if @age > 5
      return "This year your tree grew to #{@height.round(2)}m tall, and produced #{@orange_count} oranges."
    end
  end
end


def count_the_oranges
  if @alive
    return @orange_count.to_i
  else
    return "A dead tree has no oranges. :("
  end
end

def pick_an_orange
  if @alive
      if @age >= 5
        return "My what a delicious orange that was!"
        @orange_count = @orange_count - 1
      else
        @orange_count = 0
        return "Your tree isn't old enough to have oranges yet"
      end
  else
   return "A dead tree has nothing to pick. :("
  end

end

end
