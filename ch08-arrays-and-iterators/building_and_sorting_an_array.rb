puts 'Write some words, please. One in each line.'
puts 'When you\'re done, just press "Enter" in an empty line.'
words = Array.new
while true
  new_word = gets.chomp
  break if new_word == ''
  words << new_word
end
if words == []
  print 'You gave me nothing...'
else
  puts 'Here your words in alphabetical order:'
  puts words.sort
end
puts
puts 'Bye bye!'