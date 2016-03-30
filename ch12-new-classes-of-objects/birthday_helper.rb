# your code here
=begin

Birthday helper! Write a program to read in names and birth dates from
a text file. It should then ask you for a name. You type one in, and it tells
you when that person’s next birthday will be (and, for the truly adventur-
ous, how old they will be). The input file should look something like this:

<name>, Month day, year
...
<name2>, Month2 day2, year2


(That would be me Christopher Pine, not the young James T. Kirk; I don’t
care when he was born.) You’ll probably want to break each line up and
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

#filename = "bhelper/birthdays.txt"

def calculate_age(bd, d)
  result = (d.year - bd.year)   # age that will have if bday not yet this year
  result -= 1 if (bd.month >  d.month || (bd.month >= d.month && bd.day > d.day))
  result+1
end

file = File.open("bhelper/birthdays.txt")
birthdays_list = Hash.new("Person not found, check spelling!")

output = file.read
output.each_line do |line|
  line_list = line.chomp.split(",")
  unless line_list[0].nil?
    birthdays_list[line_list[0].strip] = line_list[1].strip+" "+line_list[2].strip
  end
end

puts "throw me a name: (bark, bark!)"
name = gets.chomp

if birthdays_list.has_key?(name)
  month, day, year = birthdays_list[name].split(" ")
  bday = Time.local(year.to_i, month, day.to_i)
  now = Time.now
  age = calculate_age(bday,now)
  puts "Birthday on #{day} #{month} and #{name} will be #{age} years old"
else
  puts birthdays_list[name]
end


