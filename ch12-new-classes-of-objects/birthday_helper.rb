puts "What year were you born in? YYYY"
year = gets.chomp.to_i
puts "And the month? M"
month = gets.chomp.to_i
puts "And the day? D"
day = gets.chomp.to_i

age = Time.new - Time.local(year, month, day)

years_old = (age / (31_557_600)).floor # seconds for 365.25 days

years_old.times { puts "SPANK!" }
