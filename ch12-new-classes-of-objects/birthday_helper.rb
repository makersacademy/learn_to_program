birthdays = {}

File.readlines('birthdays.txt').each do |line|
  array = line.split(',')
  name = array[0]
  date = array[1]
  year = array[2]

  birthdays[name] =  date.to_s + "," + year.to_s
end

puts birthdays

puts "Enter name of person? "
name = gets.chomp
dob = birthdays[name]

if dob == nil
  puts "Error, name unknown!"
else
  date, year = dob.split(',')
  year = year.to_i + 1

  puts "Your next brithday will be #{date} #{year}"
end
