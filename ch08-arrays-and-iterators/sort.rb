puts "Please enter single words followed by enter\; once you are done just press enter on the blank line."

words = []
addition = gets.chomp

while addition != ""
words.push addition
addition = gets.chomp
end

puts words.sort