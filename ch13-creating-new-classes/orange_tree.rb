class OrangeTree
  def initialize
    @age = 0
    @height = 0.0
    @oranges = 0 
    @dead = false
  end
  
  def height
    if !@dead
    @height.round(1)
  else 
    "A dead tree is not very tall. :("
  end
  end
  
  def orange_s
    @oranges > 1 || @oranges == 0 ? "oranges" : "orange"
  end
  
  
  def one_year_passes
    if !@dead
      @oranges = 0 
      @height += 0.4
        if @height > 10.2 
          @dead = true
          "Oh, no! The tree is too old, and has died. :("
        elsif @height > 2
        @oranges = (@height * 15 - 25).to_i
         "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges} #{orange_s}."
        else
        "This year your tree grew to #{@height.round(1)}m tall, but it is still too young to bear fruit."
        end
   else
     "A year later, the tree is still dead. :("
   end
  end
  
  def count_the_oranges
   if @dead == true
      "A dead tree has no oranges. :("
    else
    @oranges
   end
  end
  
  def pick_an_orange
   if @dead == true
      "A dead tree has nothing to pick. :(" 
    else
    @oranges > 0 ? puts("The orange was delicious") : puts("There are no more oranges left this year")
  end
 end
end

