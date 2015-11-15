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
var = File.read filename
var = var.split("\n")
my_hash = {}
var.each do |line|
  array = line.split(', ')
  date = array[1].split
  my_hash[array[0]] = Time.gm(array[2], date[0], date[1])
end
puts "Gimme a name"
name = gets.chomp
if my_hash.has_key?(name)
  now = Time.now
  age = now.year - my_hash[name].year
  puts "#{name}'s birthday is #{my_hash[name]} and he is #{age} years old."
else
  puts "Name not present"
end