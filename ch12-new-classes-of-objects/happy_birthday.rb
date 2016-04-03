def happy_birthday
  puts "Please enter your year of birth:"
  year = gets.chomp.to_i

  puts "Now the month (as a number please):"
  month = gets.chomp.to_i

  puts "Finally please tell me the day:"
  day = gets.chomp.to_i

  birthdate = Time.local(year, month, day)
  age = 1

  while Time.local(year + age, month, day) <= Time.new
    puts 'SPANK!'
    age = age + 1
  end

end

happy_birthday

