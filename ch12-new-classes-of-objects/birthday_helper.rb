calendar = {
  'jan' => 1,
  'feb' => 2,
  'mar' => 3,
  'apr' => 4,
  'may' => 5,
  'jun' => 6,
  'jul' => 7,
  'aug' => 8,
  'sep' => 9,
  'oct' => 10,
  'nov' => 11,
  'dec' => 12
}
list = {}
input_file = 'birthday_helper.txt'
input_string = ''
# Convert date string to date
def convert_date(date)
  date_arr = date.split(' ')
  m = calendar[date_arr[0]]
  d = date_arr[1]
  y = date_arr[2]
  Time.local(y, m, d)
  puts m
end
# Ask for name input
puts 'Hello there.'
puts "Who's birthday would you like to check the details for?"
request = gets.chomp.downcase!

File.open(input_file, 'r') do |f|
  input_string = f.read
end

input_string.each_line do |line|
  arr = line.split(', ', 3)
  list[arr.shift.downcase!] = arr.join(' ').chop
end

convert_date(list[request])
