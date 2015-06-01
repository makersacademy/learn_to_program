puts 'Enter some words (one word per line).'
puts 'When you\'ve finished, just press enter on an empty line.'
ary = []

while true
  input = gets.chomp
  ary.push input
  if input == ""
    puts 'Here are your words, sorted your words alphabetically:'
    puts ary.sort
    break
  end
end
