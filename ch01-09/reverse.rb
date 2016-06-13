lineLength = 120
puts "abc".ljust(50)+"def".rjust(50)
puts "What do you want to ask your boss?"
yourInput = gets.chomp

puts yourInput.ljust(lineLength)
puts "WHADDAYA MEAN \"#{yourInput}\"?!? YOU'RE FIRED!!".rjust(lineLength)

