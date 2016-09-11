
class OrangeTree
  def initialize
     @age = 0
     @height = 0
     @orange_count = 0
     @alive = true
  end
 
   def height
     @alive ? @height : "A dead tree is not very tall. :("
   end
 
   def count_the_oranges
     @alive ? @orange_count : "A dead tree has no oranges. :("
   end
 
   def pick_an_orange
     if @alive
       if @orange_count > 0
         @orange_count -= 1
         "Delicious!"
       else
         "There are no oranges on the tree this year"
       end
     else
       "A dead tree has nothing to pick. :("
     end
   end
 
   def one_year_passes
     @orange_count = 0
     @age += 1
     @height = (@height + 0.4).round(1)
     if @alive
 
       if @age > 25
         @alive = false
         "Oh, no! The tree is too old, and has died. :("
       elsif @age > 5
         @orange_count += (@height * 15 - 25).round
         "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
       end
 
     else
       "A year later, the tree is still dead. :("
     end
   end
 
end