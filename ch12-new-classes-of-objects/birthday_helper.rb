
require 'time'

Dir.chdir '/Users/seanhawkridge/Desktop'
birthdays = File.read('birthdays.txt')

puts "What name would you like to search for?"
name = gets.chomp

birthday_h = {}
birthdays.each_line do |line|
  line = line.chomp.split(', ')
  n = line[0]
  d = line[1..-1].join(' ')
  birthday_h[n]=d
end

if birthday_h.has_key?("#{name}")
  dob = birthday_h["#{name}"]
  age = ((Time.new - Time.parse(dob))/365.25/24/60/60).to_i
  puts "Their date of birth is #{dob} which means at their next birthday they'll be #{age+1}!"
else
  puts "They're not on your list"
end
