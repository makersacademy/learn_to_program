class OrangeTree
  
def initialize 
	@height = 0
	@age = 0
	@alive = true
	@fruit_count = 0
end

def height 
if @alive
@height
else
'A dead tree is not very tall. :('
end
end

def one_year_passes
if @alive
@height = (@height + 0.4).round(1)
@fruit_count = 0

if @height > 10
@alive = false
'Oh, no! The tree is too old, and has died. :('
elsif @height > 2
@fruit_count = ((@height * 15) - 25).to_i
"This year your tree grew to #{@height}m tall, and produced #{@fruit_count} oranges."
else
"This year your tree grew to #{@height}m tall, but is still too young to bear fruit."
end
else
'A year later, the tree is still dead. :('
end
end

def count_the_oranges
if @alive
@fruit_count
else
'A dead tree has no oranges. :('
end
end

def pick_an_orange
if @alive
if @fruit_count > 0
	 "You picked a delicious orange from the tree. Yum!"
	@fruit -= 1
else
	 "There are no oranges on the tree. Sad times"
end
else
	"A dead tree has nothing to pick. :("
end
end
end
