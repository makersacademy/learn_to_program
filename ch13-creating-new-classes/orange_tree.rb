# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  # your code here
  def initialize(height, alive, orange_count)
      height = 0
      @height = height
      alive = true
      @alive = alive
      orange_count = 0
      @orange_count = orange_count
end

def height
    if @alive == true
        return @height #determine growth later?
    else
        "A dead tree is not very tall. :("
    end
end

def orange_count
    if @alive == true
       return @orange_count
    else
        "I wouldn't eat those"
    end
end

def a_year_later
    if @alive == true
     @height = @height + 0.4
        @orang_count = 0
        #height determines age 25*.4 = 10 , if height > 10 returns alive ==false
        # height also determines fruit production, 5*.4=2, if height > 2 returns orange count == (@height * 15 -25)
        #first 5 years no fruit
        if  height > 10
         @alive =false
            "Oh no! The tree is too old, and has died. :("
            elsif height > 2
         @orange_count = (@height*15-25)
            "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
        else
            "tree grew #{@height}meters, but no fruitty tutey, this tree too young"
        end
    
else
    "A year later, the tree is still dead. :("
    
    end
    
end
            
  def eating_oranges
      if @alive ==true
          if @orange_count > 0
              @orange_count = @orange_count - 1
              "nom nom nom delishoouuuuuussssssss"
          else
              "A dead tree has nothing to pick. :("
          end
      else
          "A dead tree has no oranges. :("
      end
  end
  end