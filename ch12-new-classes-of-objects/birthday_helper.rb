name = gets.chomp

input_birthdays = File.read "input_birthdays.txt"

birthday_lookup = {}

input_birthdays.each_line do |line|

  array = line.split(',')

birthday_lookup[array[0]] = "#{array[1]}, #{array[2]}"

end

birthday_lookup.shift

puts birthday_lookup.values_at(name).pop.lstrip
