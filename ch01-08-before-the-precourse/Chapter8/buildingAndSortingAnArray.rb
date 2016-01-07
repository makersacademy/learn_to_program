puts 'Please enter a new word.'
words = []

while true
  word = gets.chomp
  words.push word
  if word == ''
    break
  end
end

puts 'Sweet, here they all are sorted!'
puts words.sort
