data_str = File.read ("Data.txt").each_line {|line| line.chomp}
data_arr = data_str.split("\n")

birth_dates = {}
name = []
date = []
year = []

data_arr.each do |string|
  a = string.split(",")
  name << a[0]
  date << a[1]
  year << a[2]
end

idx = 0
while idx < name.length
  birth_dates[name[idx]] = date[idx] + year[idx]
  idx += 1
end

puts "Whose birthday would you like to find out?"
person = gets.chomp

if birth_dates.has_key?(person)
  dates = birth_dates[person]
  puts dates[0..5]
else
  puts "Sorry, we don't have information about this person."
end

end# your code here