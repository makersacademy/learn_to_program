=begin
Birthday helper! Write a program to read in names and birth dates from
a text file. It should then ask you for a name. You type one in, and it tells
you when that person’s next birthday will be (and, for the truly adventur-
ous, how old they will be). The input file should look something like this:

You’ll probably want to break each line up and
put it in a hash, using the name as your key and the date as your value.
In other words: words:
birth_dates['The King of Spain'] = 'Jan 5, 1938'
(You can store the date in some other format if you prefer.)

Though you can do it without this tip, your program might look prettier
if you use the each_line method for strings. It works pretty much like each
does for arrays, but it returns each line of the multiline string one at a
time (but with the line endings, so you might need to chomp them). Just
thought I’d mention it....
=end


filename = 'birthdays.txt'
lines = File.read filename
lines = lines.split("\n")
our_data = {}
lines.each do |line|
  name_and_date = line.split(', ')
  name = name_and_date[0].capitalize
  date = name_and_date[1].split
  year = name_and_date[2]
  month = date[0]
  day = date[1]
  our_data[name] = Time.gm(year, month, day)
end
puts "Tell me the name of someone and I'll tell you their birthday."
requested_name = gets.chomp.capitalize
if our_data.has_key?(requested_name)
  now = Time.now
  age = now.year - our_data[requested_name].year
  age -= 1 if now.month < our_data[requested_name].month || (now.month == our_data[requested_name].month && now.day < our_data[requested_name].day)
  puts "#{requested_name}'s birthday is #{our_data[requested_name]} and they're #{age} years old."
else
  puts "Sorry, #{requested_name} is not present in my list."
end