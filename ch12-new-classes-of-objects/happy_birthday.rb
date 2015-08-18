while true
  puts "What year were you born in?"
  year = gets.chomp.to_i

  if year < 1
    puts "Please enter a number that is above zero"
  elsif Time.new(year) > Time.new
    puts "You were not born in the future"
  else
    break
  end
end

while true
  puts "What month were you born in?"
  month = gets.chomp.to_i

  if month < 1
    puts "Please enter a number between 1 and 12"
  elsif month > 12
    puts "Please enter a number between 1 and 12"
  else
    break
  end
end

while true
  puts "What day of the month were you born on?"
  day = gets.chomp.to_i

  if day < 1
    puts "Please enter a number between 1 and 31"
  elsif day > 31
    puts "Please enter a number between 1 and 31"
  else
    break
  end
end

dob = Time.new(year, month, day)
date = Time.new

ageyears = (date.to_i - dob.to_i)/31567000

puts "You are #{ageyears} years old !"

puts "SPANK!"*ageyears
