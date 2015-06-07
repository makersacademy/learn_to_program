puts "What year were you born?"
year = gets.chomp
puts "And month? (in numbers please)"
month = gets.chomp
puts "And finally the day?"
day = gets.chomp

birthday = Time.local(year, month, day)
age = ((Time.new - birthday) / 31556900).to_i
age.times do
  puts "SPANK!"
end