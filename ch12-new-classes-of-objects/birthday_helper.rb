filename = "/Users/jamesgardiner/Documents/Coding/bdays.txt"

my_file = File.read filename

people_arr = my_file.split("\r")

my_hash = {}

people_arr.each do |line|
  split_line = line.split(', ')
  my_hash[(split_line[0])] = split_line[1] + ", " + split_line[2]
end

print "Please enter a name to see their next birthday: "
name = gets.chomp
puts

c_year = Time.now.year
day_month = my_hash[name].gsub(/,.*/, "")
age = (Time.new - Time.local((my_hash[name])[-4..-1],day_month[0..2],day_month[4..6].to_i)) / 60 / 60 / 24 / 365

if Time.local(c_year,day_month[0..2],day_month[4..6].to_i) < Time.now
  c_year += 1
  age += 1
end

if my_hash[name] == ""
  puts "Sorry name not found."
else
  puts "They will be #{age.floor}, on #{day_month}, #{c_year}"
end
