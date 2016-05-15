# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  # your code here
     def initialize
       @height = 0
       @age = 0
       @oranges = 0
       @alive = true
     end
     
     def one_year_passes
          if @alive
               @age += 1
               @height += 0.4
               @oranges = (@height * 15) - 25 if @age > 4
          
               if @age < 26
                    "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges.to_i} oranges."
               else
                    @alive = false
                    "Oh, no! The tree is too old, and has died. :("
               end
          else 
               "A year later, the tree is still dead. :("
          end
     end
     
     def height
          @alive ? @height.round(1) : "A dead tree is not very tall. :("
     end
     def count_the_oranges
          @alive ? @oranges.to_i : 'A dead tree has no oranges. :('
     end
     
     def pick_an_orange
          if @alive
               @oranges -= 1
               "The orange was very tasty"
          else
               "A dead tree has nothing to pick. :("
          end
     end
      
end
