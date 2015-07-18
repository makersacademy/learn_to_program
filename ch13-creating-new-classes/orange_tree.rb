class OrangeTree
  def initialize
    @treeHeight = 0
    @treeAge = 0
    @oranges = 0
  end

  def height
        puts "Your tree is now #{@treeHeight}m high"
  end

  def one_year_passes
    passage_of_time
  end

  def count_the_oranges
    puts "The tree has #{@oranges} oranges!"
  end

  def pick_an_orange
    @oranges -= 1
    if @oranges <= 0
      puts "No more oranges to eat I'm afraid!"
    else
      puts "That was a delicious orange!"
    end
  end

  private

  def treeDeath?
    @treeAge >= 10
  end

  def orangeCount?
    @treeAge >= 3
  end

  def passage_of_time
    if treeDeath?
      puts "The tree has died"
      exit
    else
      @treeAge += 1
      @treeHeight += 0.3
    end

    if orangeCount?
      @oranges = 0
      @oranges += (3*@treeAge*2)
    end
  end
end

mytree = OrangeTree.new
mytree.one_year_passes
mytree.one_year_passes
mytree.height
mytree.one_year_passes
mytree.count_the_oranges
mytree.pick_an_orange
mytree.count_the_oranges
mytree.one_year_passes
mytree.one_year_passes
mytree.one_year_passes
mytree.count_the_oranges
mytree.pick_an_orange
mytree.count_the_oranges
mytree.one_year_passes
mytree.one_year_passes
mytree.one_year_passes
mytree.one_year_passes
mytree.one_year_passes
