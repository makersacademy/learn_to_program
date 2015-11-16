  birthdays = {}

# Read each line of the file and then...
File.readlines('birthdays.txt').each do |line|
# ...Split it at commas to name, date and year. Apparently possible to do that like this, creating separate objects for each? Think because split returns an array?
  name, date, year = line.split(',')
# Allocate name to hash and time to key. Time is done with the Time class rather than just with strings (ie. date + year doesn't work?)
  birthdays[name] = Time.gm(year, *(date.split))
end

puts "Whose birthday you would like to know?"
reply = gets.chomp
born = birthdays[reply]
date = born.to_s[5..10]

if born == nil
  puts "Sorry, no information on that person."
else

end

puts "#{reply}'s birthday is on #{date}"

# Currently only gives date in format MM-DD