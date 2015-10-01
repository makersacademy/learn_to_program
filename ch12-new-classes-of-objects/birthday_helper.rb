require 'yaml'

read_file = File.open 'birthdays.txt'
hash = {}

read_file.each_line do |person|
  person.chomp!
  array = person.split(', ')
  key = array[0]
  year = array[2].to_i
  month = array[1].split(' ').first
  day = array[1].split(' ').last
  value = Time.new(year, month, day)
  hash[key] = value
end

puts 'Please input a name:'
name = gets.chomp
age = Time.now.year - hash[name].year
next_birthday = (hash[name].year + age + 1).to_s + ' ' +
                hash[name].month.to_s + ' ' +
                hash[name].day.to_s
puts name + ' is ' + age.to_s +
  ' and their next birthday is ' + next_birthday
