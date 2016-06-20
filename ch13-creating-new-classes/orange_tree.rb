# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.
# it 'reports height and number of oranges' do
#   expect(ot.one_year_passes).to eq 'This year your tree grew to 9.6m tall, and produced 119 oranges.'
#   expect(ot.count_the_oranges).to eq 119
#   expect(ot.height).to eq 9.6
#   expect(ot.one_year_passes).to eq 'This year your tree grew to 10.0m tall, and produced 125 oranges.'
#   expect(ot.one_year_passes).to eq 'Oh, no! The tree is too old, and has died. :('
#   expect(ot.one_year_passes).to eq 'A year later, the tree is still dead. :('
#   expect(ot.one_year_passes).to eq 'A year later, the tree is still dead. :('
#   expect(ot.one_year_passes).to eq 'A year later, the tree is still dead. :('
#   expect(ot.height).to eq 'A dead tree is not very tall. :('
#   expect(ot.count_the_oranges).to eq 'A dead tree has no oranges. :('
#   expect(ot.pick_an_orange).to eq 'A dead tree has nothing to pick. :('

class OrangeTree
  def initialize
    @height = 0
    @oranges = 0
    @tree = true
  end
  def height
    if @tree
      @height.round(1)
    else
      puts 'A dead tree is not very tall. :('
    end
  end
  def count_the_oranges
    if @tree
      @oranges
  else
    puts 'A dead tree has no oranges. :('
  end
end
def one_year_passes
if @tree
    @height = @height + 0.4
     @oranges = 0
if @height > 10 && rand(2) > 0
  @tree = false
    puts 'Oh, no! The tree is too old, and has died. :('
elsif @height > 2
  @oranges = (@height * 15 - 25).to_i
  puts  "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges} oranges."
else
  puts  "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges} oranges."
end
else
    puts 'A year later, the tree is still dead. :('
end
end
def pick_an_orange
if @tree
if @oranges > 0
  @oranges = @oranges - 1
else
  puts 'Nothing to pick, whait another year'
end
else
  puts 'A dead tree has nothing to pick. :('
end
end
end
