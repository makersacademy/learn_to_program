birth_dates = {}


File.readlines("/Users/sorry/Desktop/birthdates.txt").each do |line|	
  line = line.chomp

  first_comma = 0
  while line[first_comma] != ',' &&
      first_comma < line.length
    first_comma = first_comma + 1
  end

  name = line[0..(first_comma - 1)]
  date = line[-11..-1]
  birth_dates[name] = date
end

# Now ask the user which one they want to know.
puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]
date = date[0..5]
arr  = date.split(' ')
born = birth_dates[name]
born = born.split(',')

now = Time.new
age = now.year.to_i - born[-1].to_i
age = age.to_s

if date == nil
  puts "Oooh, I don't know that one..."
else
	puts
  puts "#{name} will be #{age} on #{arr[1]} #{arr[0]}."
end
