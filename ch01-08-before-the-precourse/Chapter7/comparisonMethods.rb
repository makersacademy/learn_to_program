puts 1 < 2
puts 1 > 2

puts 2 <= 2
puts 3 <= 2

puts 2 == 2
puts 2 != 2

#Lexicographical ordering...
puts 'a' < 'b'
puts 'b' != 'z'

#Except all capitals come before lower case letters...
puts 'x'.capitalize < 'a'

#and..
puts 2 < 10 # => true
puts '2' < '10' # => false...
#the string is only comparing the characters in the order it reads them, therefore it sees '2' < '1'.
