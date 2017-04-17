#Rather than using array numbering to choose which object to do something to, we can do something to all objects
#in an array with the .each method

languages = ['English', 'French', 'Ruby']

languages.each do |lang| # => for .each element in the array languages point the variable |lang| at it.
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end
