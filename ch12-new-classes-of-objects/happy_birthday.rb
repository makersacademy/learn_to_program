puts 'What year were you born in?'
year = gets.chomp.to_i
puts 'And month (in Integer)?'
month = gets.chomp.to_i
puts 'And day?'
day = gets.chomp.to_i
puts "#{((Time.new - Time.mktime(year, month, day)) / (60 * 60 * 24 * 30 * 12)).to_i} years old"
require 'date'
if (Time.new.month == Time.mktime(year, month, day).month and Time.new.day == Time.mktime(year, month, day).day)
  puts 'SPANK!'
end
