def shuffle arr
  arr.shuffle
end

words = []

while 1 + 1 == 2
word = $stdin.gets.chomp

break if word.empty?

words << word
end
print "..................."
puts (shuffle words)
