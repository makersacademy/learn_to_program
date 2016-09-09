require 'yaml'





filename = 'C:\Users\Tom\Desktop\births.txt'

file_string = File.read filename



birthday_dates = Hash.new

file_string.each_line do |x|
  array = x.split(/  /)
  birthday_dates[(array[0])] = (array[1])
end

puts "Give me a name!"

po_name = gets.chomp

birthday_dates.each do |name, date|
  if po_name == name
    puts "#{name} was born on the #{date}"
  else
    puts "We don't have that persons birthday date! Sorry!"
  end

end
