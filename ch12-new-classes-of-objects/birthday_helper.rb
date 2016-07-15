list = {}
input_file = 'birthday_helper.txt'

# Create hash from input file
File.open(input_file, 'r') do |f|
  input_string = f.read
  input_string.each_line do |line|
    arr = line.split(', ', 3)
    list[arr.shift.downcase!] = arr.join(' ').chop
  end
end
# Ask for name input
puts 'Hello there.'
puts "Who's birthday would you like to check the details for?"
r = gets.chomp
r.downcase!
# # Convert date string to date
def convert_date(date)
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
  date_arr = date.split(' ')
  @m = calendar[date_arr[0]]
  @d = date_arr[1]
  @y = date_arr[2]
  Time.local(@y, @m, @d)
end

def age(date)
  ((Time.new - date) / 31_557_600) + 1
end

def days_until
  (Time.new - Time.local(Time.new.year, @m, @d) / 86_400).floor
end

def capitalise(string)
  string.split.map(&:capitalize).join(' ')
end

puts "#{capitalise(r)} will be #{age(convert_date(list[r])).floor} in #{days_until}"
