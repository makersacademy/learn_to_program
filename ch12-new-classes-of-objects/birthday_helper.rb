birth_dates = Hash.new
x = []
File.read('birth_list.txt').each_line do |line|
  line = line.chomp # To separate each bithday
  x << line # Ho creato un Array nel quale ha messo il file "birth_list.txt"
  first_comma = 0 #counter

  while line[first_comma].chr != ',' && first_comma < line.length
    # I have to separate name and date by ',' in order to work
    first_comma += 1
  end

  name = line[0..(first_comma - 1)]
  date = line[-12..-1]

  birth_dates[name] = date
end

puts "Which birthday are you looking for?"
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts "not found it"
else
  puts date[1..12]
end
