require 'time'

def bday_help

Dir.chdir '/Users/chriswynne/projects/learn_to_program/ch12-new-classes-of-objects'

file_name = 'birthday_list.txt'

string = File.read file_name

birthdays = {}
string.each_line do |line|
  current = line.chomp.split(',')
  birthdays[current[0]] = "#{current[1]}#{current[2]}".strip
end

puts "Give me a name"
name = gets.chomp
birth_date = birthdays[name]
p birth_date
puts "Next birthday is #{birth_date[0..-6]}"
puts "They will be #{years_since(birth_date)} years old."

end

def years_since(birth_date)
  ((Time.now - Time.parse(birth_date)) / (60*60*24*365.25)).to_i
end



bday_help
