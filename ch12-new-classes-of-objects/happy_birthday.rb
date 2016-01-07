def happy_birthday
  puts "What year were you born?"
  year = gets.chomp
  puts "What month(number)?"
  month = gets.chomp
  puts "On what day?"
  day = gets.chomp
  birth = Time.new(year, month, day)
  time = Time.now
  
  puts (time - birth) / 60 / 60 / 24 / 365
end

happy_birthday