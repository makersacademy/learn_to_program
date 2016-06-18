
require 'date'

puts "What year were you born in?"
year = gets.chomp

puts "What month were you born in?"
month_input = gets.chomp
month = Date::MONTHNAMES.index(month_input)

puts "What day were you born on?"
day = gets.chomp.to_i

birth_date = Time.local(year, month, day)
current_date = Time.new

age = current_date - birth_date

years = age / 31536000

puts "SPANK!\n" * years
