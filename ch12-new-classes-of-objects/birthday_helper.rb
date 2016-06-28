#!/usr/bin/env ruby
birth_dates = {}

File.read("birthdates.txt").each_line do |line|
  name, date, year = line.chomp.split(",")
  birth_dates[name] = date
end

puts "Whose birthday would you like to know?"
name = gets.chomp
date = birth_dates[name]

if !date
  puts "Oooh, I don't know that one..."
else
  puts date
end
