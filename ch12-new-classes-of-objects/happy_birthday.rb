#!/usr/bin/env ruby

puts "What year were you born in?"
b_year = gets.chomp

puts "What month were you born in?"
b_month = gets.chomp

puts "What day were you born? in"
b_day = gets.chomp


birthday = Time.local(b_year, b_month, b_day)

birthday_number = ((Time.now - birthday) / (60*60*24*365.25)).to_i
birthday_number.times {puts 'SPANK'}
