# Greater than or less than?
puts 1 > 2
puts 1 < 2

# Greater than or equal to, or less than or equal to?
puts 5 >= 5
puts 5 <= 4

# Are these equal? Are these different?
puts 1 == 1
puts 2 != 1

# Strings can be compared too - works based on alphabetical order. Catch is that capitalized letters are ordered before lowercase. Also, when numbers are used in strings the < will only look at the first digit. See below.

puts 'cat' < 'dog'
puts 'bug lady' < 'Xander'
puts 'bug lady'.downcase < 'Xander'.downcase
puts 2 < 10
puts '2' < '10'

# Note: comparison methods don't give the strings true and false - they give special objects true and false. The words 'true' and 'false' are printed because puts is really printing true.to_s, false.to_s
