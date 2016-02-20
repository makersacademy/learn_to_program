puts "Hi, what year were you born?"
year = gets.chomp
puts "And what month were you born?"
month = gets.chomp

age = Time.new - Time.new(year,month)
age_years = age.fdiv(60).fdiv(60).fdiv(24).fdiv(365).round
puts "You're #{age_years} years old! You get #{age_years} spanks!"
age_years.times do 
    puts "Spank!"
end