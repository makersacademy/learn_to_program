# Sample file
# filename = 'birthdays.txt'
# File.open filename, 'w' do |f|
#   f.write ("Nicolas Cage, Jan 7, 1964\nChristopher Alexander,  Oct 4, 1936\nChristopher Lambert, Mar 29, 1957\nChristopher Lee, May 27, 1922\nChristopher Lloyd, Oct 22, 1938\nChristopher Pine, Aug 3, 1976\nChristopher Plummer, Dec 13, 1927\nChristopher Walken, Mar 31, 1943\nThe King of Spain, Jan 5, 1938")
# end
#

# names_and_bdays = File.read filename
names_and_bdays = "Nicolas Cage, Jan 7, 1964\nChristopher Alexander,  Oct 4, 1936\nChristopher Lambert, Mar 29, 1957\nChristopher Lee, May 27, 1922\nChristopher Lloyd, Oct 22, 1938\nChristopher Pine, Aug 3, 1976\nChristopher Plummer, Dec 13, 1927\nChristopher Walken, Mar 31, 1943\nThe King of Spain, Jan 5, 1938"
birth_dates     = {}

names_and_bdays.each_line do |line|
  arr = line.split(',').map(&:strip)
  birth_dates[arr[0]] = arr[1] + ', ' + arr[2]
end

puts "Who's birthday would you like to know?"
name = gets.chomp

today = Time.now

if birth_dates.include?(name)
  date_arr = birth_dates[name].split(' ').map(&:strip)
  bday = Time.new(date_arr[-1], date_arr[-3].chomp(','), date_arr[-2])
  next_bday = nil

  if today.mon < bday.mon || (today.mon == bday.mon && today.day < bday.day)
    next_bday = Time.new(today.year, bday.mon, bday.day)
    puts "Next birthday: #{next_bday.day}/#{next_bday.mon}/#{next_bday.year}"
    puts "They will turn #{next_bday.year - bday.year}"
  elsif today.mon == bday.mon && today.day == bday.day
    next_bday = Time.new(today.year, bday.mon, bday.day)
    puts "Today is their birthday!"
    puts "They are turning #{next_bday.year - bday.year}"
  elsif today.mon > bday.mon || (today.mon == bday.mon && today.day > bday.day)
    next_bday = Time.new(today.year + 1, bday.mon, bday.day)
    puts "Next birthday: #{next_bday.day}/#{next_bday.mon}/#{next_bday.year}"
    puts "They will turn #{next_bday.year - bday.year}"
  end

else
  puts "Birthday unknown"
end
