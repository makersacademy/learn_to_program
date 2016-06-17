# your code here

require "yaml"

birthdays_file = "/Users/Sophie/Desktop/birthdays.txt"

puts "Please enter a name:"
given_name = gets.chomp

#retrieve birthday
read_string = File.read birthdays_file
birthdays_hash = YAML::load(read_string)

birthdays_hash.each do |name, birthdate|
  if given_name.downcase == name.downcase
    puts "#{name} was born on #{birthdate}"
  end
  
end
