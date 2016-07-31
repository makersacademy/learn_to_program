# your code here
filename = "./bday_input.txt"

name_list = File.read filename

names_array = name_list.lines

names = {}

  names_array.each do |line|
    sub_array = line.split(',')
    names[sub_array[0]] = [sub_array[1],sub_array[2]]
  end

puts "Enter a name"

name_input = gets.chomp

puts "Next birthday will be on #{names[name_input][0]}"
