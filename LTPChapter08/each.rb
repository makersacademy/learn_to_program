# The lines below use the method each to 'do' what's in the code to each item in the array languages. putting lang inside || gives each a common variable in order to feed in the items in the array.

languages = ['German', 'French', 'Spanish']

languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end

puts 'And let\'s hear it for English!'

puts

# The below are called integer methods.

3.times do
  puts 'Hip-Hip-Hooray!'
end

2.times do
  puts '...you can say that again...'
end


