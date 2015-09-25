# your code here

puts "Please provide the filename that has list of birthdays"
flnm=gets.chomp
birthdays = {}

File.read(flnm).each_line do |record|
  birthdays[record[0..(record.index(",")-1)]] = record[record.index(",")+1..record.length].strip
end

puts "Whose birthday you would like to know"
ans = gets.chomp

return "I don't know this person's birthday" if ans == nil

dob_str = birthdays[ans].delete(",").split(" ")

dob=Time.new(dob_str[2], dob_str[0], dob_str[1])

puts "#{ans.capitalize} will be " +
     (Time.new.year - dob.year).to_s +
     " years on #{dob_str[0]} #{dob_str[1]}"
