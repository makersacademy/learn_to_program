def years_from_seconds (sec)
  (sec / 60 / 60 / 24 / 365).floor
end

puts "What year were you born in? (eg 1983)"
year = gets.chomp

puts "And which month were you born in? (eg 10)"
month = gets.chomp

puts "And on which day of the month were you born? (eg 04)"
day = gets.chomp

current_time = Time.new
dob = Time.local(year, month, day)

diff = current_time - dob

puts "You are #{years_from_seconds diff} years old, so you get \
#{years_from_seconds diff} spanks!"
puts "Spank! " * (years_from_seconds diff)
