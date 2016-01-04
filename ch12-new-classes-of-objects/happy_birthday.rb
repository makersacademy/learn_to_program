require "time"

def happy_birthday
  puts "What year were you born?"
  year = gets.chomp
  puts "Month?"
  month = gets.chomp
  puts "Day?"
  day = gets.chomp
  age = Time.new - Time.gm(year,month,day)
  age_year = (age/60/60/24/365).to_i
  puts "You are #{age_year} years old."
  puts "SPANK!\n"*age_year
end

happy_birthday