class OrangeTree
  def initialize 
      @height = 0
      @oranges = 0
      @life = true
  end
  def height
      return @height.round(1) if @life
      return 'A dead tree is not very tall. :(' if @life == false
  end
  
  def count_the_oranges
    if @life
        @oranges
    else
        'A dead tree has no oranges. :('
    end
  end
  
  def one_year_passes
    if @life 
      @height += 0.4
      @oranges = 0
      if @height >= 10.4
        @life = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
          @oranges = (@height * 15 - 25).to_i
          "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges.round} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall," +
          " but is still too young to bear fruit."
      end
    else
      'A year later, the tree is still dead. :('
    end

  end
  
  def pick_an_orange
      if @live
          if @oranges > 0
             @oranges -= 1
             'You pick a juicy delicious orange!'
         else
             'You search for an orange, but the tree is bare'
         end
     else
         'A dead tree has nothing to pick. :('
     end
  end
    
  
end