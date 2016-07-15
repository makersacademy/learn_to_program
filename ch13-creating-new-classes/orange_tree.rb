 # Class OrangeTree sees the life cycle of an orange tree
    # INSPIRED (HEAVILY AT THAT) L2P

class OrangeTree
  # your code here

  def initialize
    @height = 0 
    @orange_count = 0
    @alive = true
  end

  def height 
    if @alive 
      @height
    else
      'A dead tree is not very tall. :(' 
    end
  end

  def count_the_oranges 
    if @alive
      @orange_count
    else
      'A dead tree has no oranges. :(' 
    end
  end
  
  def one_year_passes 
    if @alive
      @height += 0.4
      @orange_count = 0 # old oranges fall off

      if @height > 10 && rand(2) > 0
        # tree dies
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
        # new oranges grow
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height}m tall," + " and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height}m tall," +
        " but is still too young to bear fruit." 
      end
    else
      'A year later, the tree is still dead. :(' 
    end
  end

  def pick_an_orange 
    if @alive
      if @orange_count > 0
        @orange_count -= 1 
        'Lovley fruit this year!'
      else
      'No fruit this year (or travellers pick it all ...B******s!)' 
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end 
end

puts(ot.one_year_passes) 
puts(ot.count_the_oranges) 
puts(ot.height) 
puts(ot.one_year_passes) 
puts(ot.one_year_passes) 
puts(ot.one_year_passes) 
puts(ot.one_year_passes) 
puts(ot.one_year_passes) 
puts(ot.height) 
puts(ot.count_the_oranges) 
puts(ot.pick_an_orange)
