puts 'Please write me a list of words to sort! When you\'re done, just press enter'
list = []

while true
  word = gets.chomp
  if word == ''
    break
  end
  list.push word
end

puts 'Here\'s your list!'
puts list.sort
