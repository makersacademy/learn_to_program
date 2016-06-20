class OrangeTree

def initialize
@height = 0
@orange_count = 0
@alive = true
@age = 0
end

def height
if @alive
@height
else
"A dead tree is not very tall. :("
end
end

def one_year_passes
if @alive
@age +=1
@height = (@height + 0.4).round(1)
if @age > 25
@alive = false
'Oh, no! The tree is too old, and has died. :('
elsif @age > 5
@orange_count = (@height * 15 - 25).round(1).to_i
"This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
else
"Your tree is still too young to bear fruit"
end
else
'A year later, the tree is still dead. :('
end
end


def count_the_oranges
if @alive
@orange_count
else
"A dead tree has no oranges. :("
end
end

def pick_an_orange
     if @alive && @oranges >= 1
        @oranges -= 1
        "You picked one orange"
     elsif @alive
        "No oranges to pick, I'm afraid :("
     else
        "A dead tree has nothing to pick. :("
     end
  end

end
