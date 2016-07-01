puts "What year were you born in? Please write out in full e.g. 1998"
year = gets.chomp
 while month = 0 do
puts "What month were you born in?"
month = gets.chomp.downcase

if month == "january"
  month = 1

  elsif month == "february"
    month = 2

  elsif month == "march"
    month = 3

  elsif month == "april"
    month = 4

  elsif month == "may"
    month = 5

  elsif month == "june"
    month = 6

  elsif month == "july"
    month = 7

  elsif month == "august"
    month = 8

  elsif month == "september"
    month = 9

  elsif month == "october"
    month = 10

  elsif month == "november"
    month = 11

  elsif month == "december"
    month = 12

  else
    puts "Are you sure you're spelling that right? Remember the computer isn't as good at words as you are!"

end
end

puts 'What day were you born on?'
day = gets.chomp

right_now = Time.now
birth_day = Time.gm(year.to_i, month.to_i, day.to_i)

years_old = (right_now - birth_day)/(60*60*24*365)

#add in month to get for birthdates later in the year

(years_old.to_i).times do
  puts 'Birthday Beats'

end
