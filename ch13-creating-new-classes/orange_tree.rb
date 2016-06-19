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
"Oh, no! The tree is too old, and has died. :("
end
end

def count_the_oranges
if @alive
@orange_count
end
end

def one_year_passes
@height = (@height + 0.4).round(1)
if @height > 10
@alive = false
"Oh, no! The tree is too old, and has died. :("
exit
elsif @height > 2
@orange_count = (@height * 15 - 25).round(1).to_i
else
@orange_count = 0
end
"This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
end




end
