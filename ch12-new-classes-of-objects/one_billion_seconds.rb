
puts "What day were you born on? (e.x. 24th of April = '24')"
day = gets.chomp
puts "What month were you born on? (e.x. 24th of April = '04' or '4')"
month = gets.chomp
puts "What year were you born in? (e.x. 1985 = '1985')"
year = gets.chomp
my_birthday = Time.new(year,month,day)

#my_birthday = Time.new(1993,4,1)

right_now = Time.now

age_in_seconds = right_now - my_birthday

seconds_until_billion = 1000000000 - age_in_seconds

date_when_billion = right_now + seconds_until_billion


if seconds_until_billion >= 0
  puts date_when_billion.strftime("You will be one billion seconds old on %d %b %Y at %H:%M")
else
  puts date_when_billion.strftime("You were one billion seconds old on %d %b %Y at %H:%M")
end
