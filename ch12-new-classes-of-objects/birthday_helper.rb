# your code here
filename = 'birthdays.csv'
birth_dates = { }
months ={'Jan'=>1, 'Feb'=>2, 'Mar'=>3, 'Apr'=>4, 'May'=>5, 'Jun'=>6, 'Jul'=>7, 'Aug'=>8, 'Sep'=>9, 'Oct'=>10, 'Nov'=>11, 'Dec'=>12}

(puts "Could not load birthdays from #{filename}"; exit) if !File.exists?(filename)
puts "Loading birthdays from #{filename}..."

File.open filename do |f| 
f.each_line do |entry|
name = entry.slice(0, entry.index(","))
date = entry.slice(entry.index(",")+2, entry.length)
birth_dates[name] = date
end
end

puts 'Enter a name and their next birthday will be returned'
name = gets.chomp
(puts "Name not found in file, exiting..."; exit) if !birth_dates.keys.include?(name)

date = birth_dates[name]
date = date.split(" ")
date[1] = date[1].chomp(",")
year = date[2]
day = date[1]

month_string = date[0]
month = months[month_string]

today = Time.new
curr_year = today.strftime("%Y")
birthdate = Time.mktime(year,month,day)
birthday = Time.mktime(curr_year.to_i,month,day)

age = ((birthday - birthdate)/(60*60*24*365)).to_i

if birthday > today
puts name + '\'s next birthday will be ' + day.to_s + " " + month_string.to_s + ", #{curr_year}"
puts 'and he/she will be ' + age.to_s + ' years old'
else
puts name + '\'s next birthday will be ' + day.to_s + " " + month_string.to_s + ", #{curr_year.to_i + 1}"
puts 'and he/she will be ' + age.to_s + ' years old'
end