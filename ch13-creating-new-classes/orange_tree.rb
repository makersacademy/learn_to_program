# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize
    @@age = 0
    @@height = 0
    while @@age < 25
      self.grow
      if @@age > 5
        self.oranges
      end
      @@age = @@age + 1
    end
    if @@age == 25
      self.dies
    end
  end

  def grow
    puts "the tree grows. It is now 0.4 taller."
    @@height = @@height + 0.4
  end

  def oranges
    puts "The orange tree produces #{(@@age * 5)} oranges this year."
  end

  def dies
    puts "The tree grows old and dies"
  end
end

OrangeTree.new
