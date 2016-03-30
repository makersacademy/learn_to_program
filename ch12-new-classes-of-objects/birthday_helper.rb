# your code here used 
bdays = {} #to insert the text from the text file
File.read('bdays.txt').each_line do |line|
   line.chomp #need to get rid of \n
   comma1 = line.index(",") #gets the first comma
   name = line[0..(comma1 - 1)]#messed up this part by not adding -1
   date = line[-12..-1]
   bdays[name] = date
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
date = bdays[name]

if date == nil
  puts "Name not found, please put another name instead."
else
  puts date[0..5]
end
