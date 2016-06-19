Dir.chdir "/home/richard/Documents/learn_to_program/ch12-new-classes-of-objects/"

file = File.open("birthday_list.txt", "r")
contents = file.read

arr = contents.lines

puts arr
#contents.each_line do |line|
 #line.split(",")
# end
