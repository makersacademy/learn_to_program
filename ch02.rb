days_in_year = 365.25
hours_in_day = 24
minutes_in_hour = 60
seconds_in_minute = 60


hours_in_a_year = days_in_year * hours_in_day
puts "There is #{hours_in_a_year} in a year"

minutes_in_decade = 10 * hours_in_a_year * minutes_in_hour
puts "There is #{minutes_in_decade} minutes per decade"

age_in_seconds = 2.9 * minutes_in_decade * seconds_in_minute
puts "I am #{age_in_seconds} seconds old"

author_age = 1160000000 /(seconds_in_minute*minutes_in_hour*hours_in_a_year)
puts "The author is #{author_age} years old"