puts 'Hello, what\'s your name?'
name = gets.chomp.capitalize
puts 'Hello ' + name + '.'

if name == 'Howie'
  puts 'What a lovely name'
end
puts

puts 'I am a fortune-teller. Tell me your name:'
name = gets.chomp.capitalize

if name == 'Howie'
  puts 'I see great things in your future.'
else
  puts 'Your future is... oh my. Look at the time... '
  puts 'Sorry, but I really have to go.'
end
puts

