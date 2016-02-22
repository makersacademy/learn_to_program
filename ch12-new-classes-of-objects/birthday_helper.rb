birthdays = {}

File.read('birthdays.txt').each_line do |line|
  line = line.chomp 
  name, *birthdate = line.split(",")
  birthdays[name] = birthdate.join
  end

puts "Who\'s birthday would you like to know?"
person = gets.chomp

unless birthdays.key?(person) 
  puts "I dont know that person sorry"
else 
  puts "#{birthdays[person]}".split(//).first(6).join
end
 
