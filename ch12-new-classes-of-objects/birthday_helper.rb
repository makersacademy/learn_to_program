bday_string = File.read 'Birthdays.txt'
bday_hsh = {}
#Create array
bday_arr = bday_string.split("\n").map{ |line| line.split(",") }

#Create hash
bday_arr.each do |arr|
  bday_hsh[arr.shift] = arr.first + arr.last
end

#Strip out whitespace
bday_hsh.each_value{ |value| value.lstrip! }

puts "Who's birthday would you like to know?"
name = gets.chomp

bday_year = bday_hsh[name][-4..-1]
bday_month = bday_hsh[name][0..2]
bday_date = bday_hsh[name][5]
current_date = Time.new
cur_year = current_date.year
cur_month = current_date.month
cur_date = current_date.day
puts "#{name}'s next birthday will be on #{bday_date} #{bday_month}"
age = current_date.year - bday_year.to_i



