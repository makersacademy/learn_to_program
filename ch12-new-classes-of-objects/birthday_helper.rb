Dir.chdir "/home/richard/Documents/learn_to_program/ch12-new-classes-of-objects/"

list = {}
File.read("birthday_list.txt").each_line do |line|
  sep_line = line.split(",")
  list [sep_line[0]] = sep_line[1].chomp
  end

puts "Please input a name"
name_input = gets.chomp

if list.include? name_input
  dob = list[name_input]
  else
  puts "Error, #{name_input} not found!"
end

dob_arr = dob.split
month = dob_arr[0].to_i
day = dob_arr[1].to_i
year = dob_arr[2].to_i

birth_date = Time.local(month, day)
if birth_date > Time.local(month, day)
  dob_arr[2] = dob_arr[2] + 1
  puts "Next birthday will be #{dob_arr}"
else
  puts "Next birthday will be #{dob_arr}"
end
