#!/usr/bin/env ruby

puts "What year were you born in?"
year=gets.chomp!

puts "Which month (please use arabic numerals)"
month=gets.chomp!

puts "Which day (please use arabic numerals)"
day=gets.chomp!


b_day= Time.local(year.to_i, month.to_i, day.to_i)
 Time.now.yday
 b_day.yday
years_old= Time.now.year-year.to_i

if  Time.now.yday < b_day.yday #Work out if they've had their birthday yet this year
	years_old=years_old-1
end

puts "You are #{years_old} years old."

puts ("SPANK! " * years_old)
