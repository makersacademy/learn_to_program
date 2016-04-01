filename = "/Users/mattward/Projects/learn_to_program/ch12-new-classes-of-objects/birthdays.txt"

months = {
  'Jan' => 1, 'Feb' => 2, 'Mar' => 3, 'Apr' => 4, 'May' => 5, 'Jun' => 6,
  'Jul' => 7, 'Aug' => 8, 'Sep' => 9, 'Oct' => 10, 'Nov' => 11, 'Dec' => 12
}

file_data = File.read filename
birthday_list = {}

file_data.each_line do |line|
  line_split = line.split(",")
  name = line_split[0]
  date = line_split[1] << line_split[2].chomp
  date[0] = ''
  birthday_list[name] = date
end

puts "Give me a full name"
name = gets.chomp

birth_date = birthday_list[name].split
next_birthday = "#{birth_date[0]} #{birth_date[1].to_s}"
birth_date[0] = months[birth_date[0]]
birth_date = Time.new(birth_date[2], birth_date[1], birth_date[0])
age = ((Time.new - birth_date) / 31557600).to_i


puts "#{name}'s next birthday will be on #{next_birthday}. His age will be #{age + 1}"
