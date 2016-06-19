list = [ ]

puts "Please enter one word per line, push 'enter' to exit"
word = 'one'

while word != ''
word = gets.chomp 
list.push word
end
list.pop

class Array

def to_shuffle

sorted_array = []
count = -2
x = 0
y = 0


x = (0...(self.count)).sort_by{rand}
x.each{|num| sorted_array << self[num]}

return sorted_array
end
end

puts list.to_shuffle