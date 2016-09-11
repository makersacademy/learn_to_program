# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of
# (height * 15 - 25) per year.
# have the tree die after 25 years.



class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end
  
  def height
     if @alive
         @height
    else
        "A dead tree is not very tall. :("
    end
  end
  
  def count_the_oranges
      if @alive
         @orange_count
      else
        "A dead tree has no oranges. :("
      end      
  end
  
  def one_year_passes
    if  @alive==true && @height<=10
        @height=@height+0.4
        @orange_count=0
        if @height >= 2
            @orange_count=(@height*(rand(10)+15)).to_i
            "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
        else
            @height<2
            "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
        end
    elsif @alive==false
        "A year later, the tree is still dead. :("
    elsif
        @height>10
        @alive=false
        "Oh, no! The tree is too old, and has died. :("
     end
  end
  
  def pick_an_orange
      if @alive
          if @orange_count > 0
               @orange_count=@orange_count-1
             "You picked an orange. There are now #{@orange_count} oranges left on the tree."
          elsif @orange_count == 0
            "There are no more oranges left on the tree."
          end
      else
          "A dead tree has nothing to pick. :("
      end
  end
  
end

ot=OrangeTree.new

5.times do
    puts ot.one_year_passes 
end

puts ot.pick_an_orange
puts ot.pick_an_orange
puts ot.height
25.times do
    puts ot.one_year_passes
end
puts ot.pick_an_orange



#   it 'reports height and number of oranges' do
#     expect(ot.one_year_passes).to eq 'This year your tree grew to 9.6m tall, and produced 119 oranges.'
#     expect(ot.count_the_oranges).to eq 119
#     expect(ot.height).to eq 9.6
#     expect(ot.one_year_passes).to eq 'This year your tree grew to 10.0m tall, and produced 125 oranges.'
#     expect(ot.one_year_passes).to eq 'Oh, no! The tree is too old, and has died. :('
#     expect(ot.one_year_passes).to eq 'A year later, the tree is still dead. :('
#     expect(ot.one_year_passes).to eq 'A year later, the tree is still dead. :('
#     expect(ot.one_year_passes).to eq 'A year later, the tree is still dead. :('
#     expect(ot.height).to eq 'A dead tree is not very tall. :('
#     expect(ot.count_the_oranges).to eq 'A dead tree has no oranges. :('
#     expect(ot.pick_an_orange).to eq 'A dead tree has nothing to pick. :('