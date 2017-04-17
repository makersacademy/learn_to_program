puts 'Afternoon, I\'m Mr Wroe, what is your name?'
name = gets.chomp

if name == name.capitalize
  puts 'Nice to meet you ' + name + '. Please take a seat.'
else
  puts 'Don\'t you mean ' + name.capitalize + '?'
  puts 'Did you miss first grade english or what?'
  reply = gets.chomp
  if reply == 'No'
    puts 'Well you should have a better memory! Now sit your bum down and pay attention!'
  else
    puts 'How dare you answer me back! GET OUT OF MY CLASS!'
  end
end
