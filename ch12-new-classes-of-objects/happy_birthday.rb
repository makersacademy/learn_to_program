x = 0

puts 'What year were you born in?'
year = gets.chomp

while x != 1
puts 'What month were you born in?'
month = gets.chomp.downcase

if month == 'january'
month = 1
x = 1
elsif month == 'february'
month = 2
x = 1
elsif month == 'march'
month = 3
x = 1
elsif month == 'april'
month = 4
x = 1
elsif month == 'may'
month = 5
x = 1
elsif month == 'june'
month = 6
x = 1
elsif month == 'july'
month = 7
x = 1
elsif month == 'august'
month = 8
x = 1
elsif month == 'september'
month = 9
x = 1
elsif month == 'october'
month = 10
x = 1
elsif month == 'november'
month = 11
x = 1
elsif month == 'december'
month = 12
x = 1
else
puts 'Please type in a month'
x = 0
end
end

puts 'What day were you born on?'
day = gets.chomp

right_now = Time.new
birth_day = Time.mktime(year.to_i, month.to_i, day.to_i)

years_old = (right_now - birth_day)/(60*60*24*365)

puts ''

years_old.to_i.times do
puts 'spank'
end
