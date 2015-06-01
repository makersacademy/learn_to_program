# Random Numbers
puts 'Did you know that' + rand(101).to_s + '% of statistics are made up on the spot?'
puts

# Maths formulae for circles
puts 'You have a circle. Enter a number & that will be the radius.'
radius = gets.chomp.to_f

puts 'The circumference of that circle is ' + (2 * Math::PI * radius).round(2).to_s + '.'
puts 'And the area of that cirlce is ' + (Math::PI * radius**2).round(2).to_s + '.'
