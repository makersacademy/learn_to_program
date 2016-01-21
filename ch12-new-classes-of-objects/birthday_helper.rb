
require 'date'

string = File.read '/Users/irina/Desktop/birthday.txt'
birth_dates = {}
string.each_line do |l|
  l = l.strip.split(',')
  birth_dates[l[0]]= l[1] + l[2]
end

puts "What is person name?"
name_person = gets.chomp
if !birth_dates[name_person]
  puts 'Unknown person!'
  exit
end
b_date = birth_dates[name_person]

years_old = Date.today.year - Date.parse(b_date).year
if Date.parse(b_date).month == Date.today.month && Date.today.day == Date.parse(b_date).day
  puts "#{name_person}'s birthday(#{years_old} years) Today!"
else
  puts "#{name_person}'s next birthday(#{years_old+1} years) will be #{(Date.parse(b_date).next_year(years_old+1)).strftime("%b %d, %Y")}"
end


