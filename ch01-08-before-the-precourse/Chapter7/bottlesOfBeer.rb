num_at_start = 5
num_now = num_at_start

#Open loop to print verses when there are more than 2 bottle of beer.
while num_now > 2
  puts ''
  puts 'There are ' + num_now.to_s + ' bottles of beer on the wall,'
  puts num_now.to_s + ' bottles of beer.'

  num_now = num_now - 1

  puts 'Take one down, pass it around, there are ' + num_now.to_s + ' bottles of beers on the wall!'
end
#The grand finalay!
puts ''
puts 'There are 2 bottles of beer on the wall,'
puts '2 bottles of beer.'
puts 'Take one down, pass it around, there is 1 bottle of beer on the wall!'
puts ''
puts 'There is 1 bottle of beer on the wall,'
puts '1 bottle of beer.'
puts 'Take it down, pass it around, there are 0 bottles of beer on the wall!'
