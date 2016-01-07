puts 'Whats your name?'
name = gets.chomp
puts 'Nice to meet you ' + name.to_s + '.'

if name == 'Joe'
  puts 'That really is a great name!'
else
  puts 'Shit name bro...'
end
