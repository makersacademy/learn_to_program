class OrangeTree

#initialize the growing of the tree
def initialize
@height = 0
@orange_count = 0
@age = 0
grow
end

#define what growing means
def grow
one_year_passes

#start = Time.gm(2016,4,1,12,00)
#now = Time.new
#@age = now - start
#@age = @age.to_i
#puts @age
end

def one_year_passes
  if @alive
  @age = @age + 1
  @height = @height + 1
  if @age > 2
    @orange_count = @orange_count * @age
  end
else

end

def count_the_oranges
  puts "There are #{@orange_count} oranges."
end

def pick_an_orange
  @orange_count = @orange_count - 1
  puts "Mmm that orange was bloody delicious!"
end




end
  tree = OrangeTree.new
20.times do
  tree.one_year_passes
end
end
