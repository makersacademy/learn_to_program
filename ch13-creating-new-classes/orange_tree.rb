# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
    
    attr_accessor :height, :age, :orange_count
  
    def initialize(height=0, age = 0, orange_count = 0)
      @height = height
      @age = age
      @orange_count = orange_count
    end
  
    def height
        return @height.round(1) if @age <= 26
        'A dead tree is not very tall. :(' if @age > 26
    end
    
     def count_the_oranges 
        @orange_count = 0 if @age <= 5 
        return 'A dead tree has no oranges. :(' if @age > 25
        @orange_count.round(1)
    end

    def one_year_passes
        @height += 0.4
        @age += 1
        count_the_oranges
        return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count.round} oranges." if @age < 26
        return 'Oh, no! The tree is too old, and has died. :(' if @age == 26
        return 'A year later, the tree is still dead. :(' if @age > 26
    end

    def pick_an_orange
     @orange_count -= 1  and 'Hmm, delicious.'
    'A dead tree has nothing to pick. :(' if @age > 26
    end
end

tree = OrangeTree.new
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.count_the_oranges




#Orange tree. Make an OrangeTree class that has a height method that returns
#its height and a one_year_passes method that, when called, ages the tree one

#year. Each year the tree grows taller (however much you think an orange

#tree should grow in a year), and after some number of years (again, your

#call) the tree should die. For the first few years, it should not produce

#fruit, but after a while it should, and I guess that older trees produce

#more each year than younger trees...whatever you think makes the most

#sense. And, of course, you should be able to count_the_oranges (which returns

#the number of oranges on the tree) and pick_an_orange (which reduces the

#@orange_count by 1 and returns a string telling you how delicious the orange

#was, or else it just tells you that there are no more oranges to pick this

#year). Make sure any oranges you don’t pick one year fall off before the

#next year.