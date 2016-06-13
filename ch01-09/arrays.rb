favorites = []
favorites.push 'c'
favorites.push 'b'
favorites.push 'a'

puts "favorites[0] is: "+ favorites[0]
puts "favorites'last item is: "+ favorites.last
puts "favorites'length is: ", favorites.length

puts "popped out: "+ favorites.pop
puts "now favorites are: ", favorites
puts "favorites'length is: ", favorites.length

puts favorites.push 'e'
favorites.sort!
puts favorites.join(", ")