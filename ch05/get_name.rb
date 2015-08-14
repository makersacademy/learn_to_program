#!/usr/bin/env ruby

name_part = ['first', 'middle', 'last']
name_return = Array.new
name_part.each do |part|
  puts "What\'s your " +part+ " name?"
  name_return << gets.chomp
end

puts name_return[0] + name_return[1]

#puts "Hi " +name
puts self
