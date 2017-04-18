text = []
Dir.chdir '/home/ubuntu/workspace/Projects/learn_to_program/ch12-new-classes-of-objects'
File.open('./bdays.txt') do |f|
  f.each { |l| text << l.chomp.split(', ', 2)}
end
bday = { }
text.map{|e| bday[e[0]] = e[1]}
puts "Enter name"
while input = gets.chomp do
puts bday.include?(input) ?  bday[input] : "Name not found, try again"
break if input == 'exit'
end

puts "Bye!"