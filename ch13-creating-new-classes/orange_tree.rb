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
"Your orange tree has just been born."
  end

def height

  if @alive
      "Your tree is #{@height.round(2)} metres tall."
  else
         "A dead tree is not very tall. :("
  end
end

def one_year_passes
  if @alive
        @age = @age + 1
        @height = @height + 0.4
        "This year your tree grew to #{@height.round(2)}m tall, and produced #{@orange_count.round(0)} oranges."
          if @age < 6
                @orange_count = 0
            else
              @orange_count = ((@height + 0.4) * 15 - 25)
          end

          if @age > 24
          @alive = false
           "Oh, no! The tree is too old, and has died. :("
          end
    else
        "A year later the tree is still dead"
      end
  end

def count_the_oranges
if @alive
"Your tree has  #{@orange_count.round(0)} oranges."
else
  "A dead tree has no oranges. :("
end

def pick_an_orange
if @alive
    if @age > 5
     "My what a delicious orange that was!"
      @orange_count = @orange_count - 1
    end
    if @age < 5
      @orange_count = 0
       "Your tree isn't old enough to have oranges yet"
    end
else
 'A dead tree has nothing to pick. :('

end
end
end
end
