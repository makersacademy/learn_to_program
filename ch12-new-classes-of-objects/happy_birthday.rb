puts "Hello, if you don't mind me asking, in what year where you born?"
year = gets.chomp.to_i

while year.between?(1900, 2015) == false
    puts "Hmm, I'm not sure I totally believe that, care to try again?"
    year = gets.chomp.to_i
end

puts "Nice, and what month of that year (0 - 12)"
month = gets.chomp.to_i

while month.between?(0, 13) == false
    puts "Hey, we only have twelve months in the year, care to try again?"
    month = gets.chomp.to_i
end

puts "Okay, cool, and what day?"
day = gets.chomp.to_i

birthday = Time.gm(year, month, day)
current_time = Time.new

age = 1

while Time.gm(year + age, month, day) <= current_time
    puts "SPANK!!!!!!"
    age += 1
end