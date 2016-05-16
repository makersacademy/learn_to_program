puts "Please enter a name:"
name = gets.chomp

birth_dates = Hash.new

birthdays = File.open("birthdays.txt").read

birthdays.each_line do |line|
  pieces = line.chomp.split(',')
  if pieces[0] == name
    older = pieces[2].strip.to_i + 1
    birth_dates[pieces[0]] = "#{pieces[1]}, #{older}"
  end
end

puts birth_dates
