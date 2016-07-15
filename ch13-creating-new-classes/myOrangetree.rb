class OrangeTree
  # I created this prior to reading about rspec so am going to submit the solution as done in the folder
  def initialize treename
      @treename = treename
      @height =0
      @orange_count = 0 #no fruit until 3rd year
      @tree_age_years = 0
     
    #instance method called by new which is a class method
  end  
  def name
   @treename
  end
  def height 
    #returns height of tree
    @height
  end 
  def one_year_passes 
    #when called ages the tree by a year
    #unpicked oranges fall to the floor and rot therefore orange count is always set to zero 
    @orange_count  = 0 
    @tree_age_years += 1 
    if @tree_age_years > 6
      puts "#{@treename} is too old and withered and died"
      exit
    end
   @height = (height) +1
   if height == 3
     @orange_count += 3
   elsif height == 4
     @orange_count += 4
   elsif height == 5
     @orange_count += 5
   end
  end
  def count_the_oranges
    #returns the number of organges on the tree
    @orange_count
  end 
  def pick_an_orange
    #reduce  @orange_count by 1
    puts "oranges = #{self.count_the_oranges} maturity = #{@tree_age_years}"
    if (@orange_count == 0) && (@tree_age_years >= 3)
      puts "You have picked all the oranges"
    end
    if @tree_age_years  < 3
      puts "#{self.name} is not fully matured so has not produced any fruit yet!"
    end
    if count_the_oranges > 0
      puts "You picked that orange it looks delicious,.. you have #{@orange_count - 1} left to pick"
      @orange_count -= 1
    end
    
  end
end

orange = OrangeTree.new 'redfruity'
puts "Your tree has a height of " + orange.height.to_s
puts "Your tree is a #{orange.name} variety"
orange.pick_an_orange
orange.one_year_passes
puts "Your tree has a height of #{orange.height}"
orange.one_year_passes
puts "Your tree has a height of #{orange.height}"
orange.pick_an_orange
orange.pick_an_orange
orange.pick_an_orange
orange.one_year_passes
puts "Your tree has a height of #{orange.height}" 
puts "The number of oranges on the tree is #{orange.count_the_oranges}"
orange.pick_an_orange
puts "The number of oranges on the tree is #{orange.count_the_oranges}"
orange.pick_an_orange
puts "The number of oranges on the tree is #{orange.count_the_oranges}"
orange.pick_an_orange
puts "The number of oranges on the tree is #{orange.count_the_oranges}"
orange.pick_an_orange
orange.pick_an_orange
orange.one_year_passes
orange.pick_an_orange
orange.pick_an_orange
orange.one_year_passes
orange.pick_an_orange
orange.pick_an_orange
orange.one_year_passes
orange.one_year_passes









