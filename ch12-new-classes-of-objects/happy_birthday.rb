puts "What is your birth year?"
year = gets.chomp

puts "Which month were you born in?"
month = gets.chomp

puts "Which date were you born on?"
day = gets.chomp

birthday = Time.local(year, month, day)

age = ((Time.now - birthday) / 60 / 60 / 24 / 365.25).to_i

puts "Thanks!"
puts "Here are some birthday spanks!"

age.times{ puts "SPANK!" }



