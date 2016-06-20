
#could not do this question, was very cinfused as to where to begin
#re read chp 12 o understadn question and do in full solo
# your code here
birth_dates = {}
File.read('birthdates.txt').each_line do |line|
  
  line = line.chomp
  
  first_comma = 0
  
  while line[first_comma] != ',' &&
      first_comma < line.length
    first_comma = first_comma + 1
  end

  name = line[0..(first_comma - 1)]
  date = line[-12..-1]
  birth_dates[name] = date
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts "Oooh, I don't know that one..."
else
  puts date[0..5]
end

# first 2 lines are setting a hash, and using a file read to check the dates ---file.open possible?
#boolean loop
#reading date backwards?