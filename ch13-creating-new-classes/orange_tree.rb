class Orange_tree

  def initialize
    @tree_height = 0
    @oranges = 0
    @year = 0
    @alive = true
  end

  def height
    if @alive
      @tree_height
    else
      'The tree is dead!'
    end
  end

  def one_year_passes
    if @alive
      @tree_height = @tree_height + 0.5
      @oranges = 0

      if @tree_height > 12
        @alive = false
        'The tree has gotten too old, and it died :('
      elsif @tree_height > 2
        @oranges = (@tree_height + rand(10)).to_i
        "The tree is #{@tree_height}m tall, and has #{@oranges} oranges."
      else
        "The tree is #{@tree_height}m tall. It's still too small to grow fruit."
      end
    
    else
      'The tree is still dead...'
    end
  end

  def orange_count
    if @alive
      @oranges
    else
      'The tree is dead, there are no oranges :('
    end
  end

  def pick_orange
    if @alive
      if @oranges > 0
        @oranges = @oranges - 1
        'You picked an orange!'
      else
        'There are no oranges to pick!'
      end
    else
      'The tree is dead, there are no oranges :('
    end
  end

end

orangetree = Orange_tree.new

10.times do 
  orangetree.one_year_passes
end  

puts orangetree.one_year_passes
puts orangetree.orange_count
puts orangetree.height
puts orangetree.one_year_passes
puts orangetree.orange_count
puts orangetree.one_year_passes
puts orangetree.height
puts orangetree.one_year_passes
puts orangetree.orange_count
puts orangetree.one_year_passes
puts orangetree.orange_count
puts orangetree.pick_orange
puts orangetree.pick_orange
puts orangetree.orange_count
puts orangetree.one_year_passes

