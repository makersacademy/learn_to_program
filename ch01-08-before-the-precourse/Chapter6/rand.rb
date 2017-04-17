#3 random numbers between 0.0 and 1.0
puts rand
puts rand
puts rand

#3 random numbers between 0.0 and 1.0 with 1 decimal place
puts rand(1.0)
puts rand(1.0)
puts rand(1.0)

#3 random number between 0.0 and 5.0
puts rand(5)
puts rand(5)
puts rand (5)

#3 random numbers with varying upper limits
puts rand(100)
puts rand(4873)
puts rand(999999999)

#Never trust the weatherman...
puts 'The weatherman has told us that there is a ' + rand(101).to_s + '% chance of rain tomorrow.'
